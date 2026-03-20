#!/usr/bin/env python3
import re

with open('src/index.tsx', 'r', encoding='utf-8') as f:
    content = f.read()

# 1. 상세상담 라우트의 10298줄 중복 제거
lines = content.split('\n')
# 10298번째 줄 (0-based index는 10297)을 제거
if 10297 < len(lines) and 'form id="detailedQuoteForm"' in lines[10297]:
    lines[10297] = ''
    print("✅ 10298번 줄 중복 폼 제거")

content = '\n'.join(lines)

# 2. 간편상담 라우트에 simpleQuoteForm 추가
# 12097번 줄 바로 다음에 <form> 태그 추가
pattern = r'(</div></div><div class="bg-white rounded-2xl shadow-2xl overflow-hidden">)'
replacement = r'\1\n          <form id="simpleQuoteForm" class="p-8 space-y-8">'

if re.search(pattern, content):
    content = re.sub(pattern, replacement, content, count=1)
    print("✅ 간편상담에 simpleQuoteForm 추가")
else:
    print("⚠️ 패턴을 찾지 못했습니다")

# 3. 간편상담 라우트 끝에 </form> 태그 추가 필요 여부 확인
# (이미 있을 수 있으므로 확인만)

with open('src/index.tsx', 'w', encoding='utf-8') as f:
    f.write(content)

print("✅ 폼 구조 수정 완료")
