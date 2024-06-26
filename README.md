# 🏆 하스스톤 랭킹 검색 사이트 hearthgg 🏆

> 하스스톤 투기장, 정규전 랭킹 검색 웹 서비스

![mockup image](doc/mockup.png)

## :rocket: 프로젝트 설명

- 블리자드에서 일부만 공개하던 랭킹 데이터를 모든 유저에 대해 공개하였습니다.
- 하지만 검색 기능이 없어 본인 아이디를 찾으려면 직접 페이지를 넘기며 탐색해야 했습니다.
- 이에 데이터 미러 서버를 구축해놓고 간편히 검색할 수 있는 기능을 웹 서비스로 구현하였습니다.

## 💻 기술 스택

<div>
<img src="https://img.shields.io/badge/flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white">
<img src="https://img.shields.io/badge/getx-8A2BE2?style=for-the-badge&logo=getx&logoColor=white">
<img src="https://img.shields.io/badge/flask-000000?style=for-the-badge&logo=flask&logoColor=white">
<img src="https://img.shields.io/badge/docker-2496ED?style=for-the-badge&logo=docker&logoColor=white">
</div>

## 🛠 업데이트 로그

### [1.1.1]() - 2024-06-19

#### Fixed

- 모바일 버전 수정을 깜빡해서 수정, 배포하였습니다.

### [1.1.0]() - 2024-06-19

#### Added

- 시즌 선택 기능이 추가되었습니다. 이제 지난 시즌에 대한 기록도 찾아볼 수 있습니다.
- 정규전 모드가 추가되었습니다. 점점 다양한 모드가 추가될 예정입니다.

#### Fixed

- API 요청이 성공할 확률을 높이기 위해 재시도를 5회까지 하도록 수정했습니다.

### [1.0.1]() - 2024-06-01 

#### Released

- 로고, 일부 UI를 변경하여 배포하였습니다.

#### Changed

- ThemeData를 활용하여 스타일을 적용하였습니다.
- GetX, MVVM 패턴을 적용하여 코드를 개선시켰습니다.

### [1.0.0]() - 2024-05-09

#### Released

- 초기 프로덕트를 개발하여 단순 검색 기능만 구현, 배포하였습니다.
- 아직 투기장 검색만 지원합니다.

## 📖 개발 기록

- [하스스톤 랭킹 검색 사이트 개발기](https://taebbong.github.io/)