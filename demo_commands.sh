#!/bin/bash

# Gemini CLI 실용적인 업무 자동화 시연 스크립트
# 사용법: ./demo_commands.sh

echo "🚀 Gemini CLI 실용적인 업무 자동화 시연을 시작합니다!"
echo "=================================================="

# 1. 환경 확인
echo "📋 1. 환경 확인"
echo "API 키 설정 상태:"
if [ -n "$GOOGLE_API_KEY" ]; then
    echo "✅ API 키가 설정되어 있습니다."
else
    echo "❌ API 키가 설정되지 않았습니다."
    echo "다음 명령어로 설정해주세요:"
    echo "export GOOGLE_API_KEY='YOUR_API_KEY'"
    exit 1
fi

echo ""
echo "Gemini CLI 버전 확인:"
gemini --version

echo ""
echo "=================================================="

# 2. 동영상 제작 자동화 시연
echo "🎬 2. 동영상 제작 자동화 시연"
echo "목표: 유튜브 영상 스크립트 생성"
echo ""
echo "실행할 명령어:"
echo "gemini -p \"유튜브 영상 '2024년 최고의 생산성 도구 5가지'에 대한 5분짜리 스크립트를 작성해줘. 서론, 본론(각 도구별 설명), 결론을 포함하고, 각 섹션에 예상 시간을 표시해줘. 말투는 활기차고 친근하게.\""
echo ""
echo "실행하시겠습니까? (y/n)"
read -r response
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "실행 중..." && gemini -p "유튜브 영상 '2024년 최고의 생산성 도구 5가지'에 대한 5분짜리 스크립트를 작성해줘. 서론, 본론(각 도구별 설명), 결론을 포함하고, 각 섹션에 예상 시간을 표시해줘. 말투는 활기차고 친근하게." && echo ""
fi

echo ""
echo "=================================================="

# 3. 업무 문서 자동화 시연
echo "📄 3. 업무 문서 자동화 시연"
echo "목표: 회의록 요약"
echo ""
echo "실행할 명령어:"
echo "gemini -p \"\$(cat meeting_minutes.txt) 위 회의록에서 논의된 핵심 결정사항과 다음 액션 아이템을 요약해줘.\""
echo ""
echo "실행하시겠습니까? (y/n)"
read -r response
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "실행 중..." && gemini -p "$(cat meeting_minutes.txt) 위 회의록에서 논의된 핵심 결정사항과 다음 액션 아이템을 요약해줘." && echo ""
fi

echo ""
echo "=================================================="

# 4. 코드 생성 자동화 시연
echo "💻 4. 코드 생성 자동화 시연"
echo "목표: Python 코드 생성"
echo ""
echo "실행할 명령어:"
echo "gemini -p \"CSV 파일에서 'sales' 컬럼의 평균을 계산하는 Python 코드를 작성해줘. pandas 라이브러리를 사용하고 주석을 상세하게 달아줘.\""
echo ""
echo "실행하시겠습니까? (y/n)"
read -r response
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "실행 중..." && gemini -p "CSV 파일에서 'sales' 컬럼의 평균을 계산하는 Python 코드를 작성해줘. pandas 라이브러리를 사용하고 주석을 상세하게 달아줘." && echo ""
fi

echo ""
echo "=================================================="

# 5. 창의적 프롬프트 아이디어 생성 시연
echo "🎨 5. 창의적 프롬프트 아이디어 생성 시연"
echo "목표: 미드저니 프롬프트 아이디어 생성"
echo ""
echo "실행할 명령어:"
echo "gemini -p \"미드저니에서 쓸, '신비로운 숲속에 있는 고대 유적'에 대한 5가지 상세한 프롬프트 아이디어를 알려줘. (예: 사진작가, 애니메이션 스타일 등)\""
echo ""
echo "실행하시겠습니까? (y/n)"
read -r response
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "실행 중..." && gemini -p "미드저니에서 쓸, '신비로운 숲속에 있는 고대 유적'에 대한 5가지 상세한 프롬프트 아이디어를 알려줘. (예: 사진작가, 애니메이션 스타일 등)" && echo ""
fi

echo ""
echo "=================================================="
echo "✅ 시연이 완료되었습니다!"
echo "더 많은 정보는 '시연_매뉴얼.md' 파일을 참고하세요."
