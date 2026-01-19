---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

<style>
/* 通用论文卡片样式（复用于 Conference/Journal） */
.paper-card {
  display: flex;
  align-items: stretch;
  gap: 16px;
  margin: 16px 0;
  padding: 16px;
  border: 1px solid #e1e4e8;
  border-radius: 12px;
  background: #fff;
  box-shadow: 0 2px 8px rgba(0,0,0,0.06);
}

.paper-thumb {
  flex: 0 0 180px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #f8fafc;
  border-radius: 8px;
  padding: 10px;
}

.paper-thumb img {
  width: 100%;
  height: 120px;
  object-fit: contain;
  border-radius: 8px;
}

/* 横向（宽幅）配图优化，可在容器上加 .wide */
.paper-thumb.wide { flex-basis: 260px; }
.paper-thumb.wide img { height: 140px; }

.paper-body {
  flex: 1;
  min-width: 0;
  display: flex;
  flex-direction: column;
}

.paper-top { display: block; }

.paper-badges { display: inline-flex; gap: 6px; flex-wrap: wrap; margin-left: 8px; vertical-align: middle; }

.paper-badge {
  background: #0366d6;
  color: #fff;
  padding: 2px 8px;
  border-radius: 999px;
  font-size: 10px;
  font-weight: 600;
  box-shadow: 0 2px 4px rgba(0,0,0,0.08);
}

.paper-badge--star {
  background: #f59e0b;
  color: #111827;
}

.paper-badge-link {
  background: #2563eb;
  color: #ffffff !important;
  padding: 2px 8px;
  border-radius: 999px;
  font-size: 10px;
  font-weight: 700;
  box-shadow: 0 2px 4px rgba(0,0,0,0.08);
  text-decoration: none;
  display: inline-block;
  border: 1px solid rgba(255,255,255,0.3);
}
.paper-badge-link:hover { background: #1d4ed8; color: #ffffff !important; }

.bib-copy {
  background: #6b7280;
  color: #ffffff !important;
  padding: 2px 8px;
  border-radius: 999px;
  font-size: 10px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.2s ease;
  box-shadow: 0 2px 4px rgba(0,0,0,0.08);
  display: inline-block;
  text-decoration: none;
}
.bib-copy:hover { background: #4b5563; color: #ffffff !important; }
.bib-copy.copied { background: #10b981; }
.bib-data { display: none; }

.paper-title a { color: #0366d6; text-decoration: none; }
.paper-title { margin: 0 0 6px 0; font-size: 14px !important; line-height: 1.35; color: #24292e; display: inline; }
.paper-meta { margin: 0 0 8px 0; color: #64748b; font-size: 11px !important; font-weight: 500; }
.paper-meta strong { font-size: inherit; }
.paper-bib { margin-top: 6px; }
.paper-bib summary { cursor: pointer; font-size: 11px; color: #2563eb; list-style: none; }
.paper-bib summary::-webkit-details-marker { display: none; }
.paper-bib pre {
  margin: 6px 0 0 0;
  padding: 8px;
  background: #f8fafc;
  border: 1px solid #e2e8f0;
  border-radius: 8px;
  font-size: 11px;
  line-height: 1.45;
  white-space: pre-wrap;
}

@media (max-width: 768px) {
  .paper-card { flex-direction: column; }
  .paper-thumb { flex: 0 0 auto; }
  .paper-thumb img { height: 160px; }
  .paper-thumb.wide { flex-basis: auto; }
  .paper-thumb.wide img { height: 180px; }
}

@media (max-width: 768px) {
  .paper-container {
    flex-direction: column !important;
  }
  .paper-image {
    flex: 0 0 auto !important;
    height: 200px !important;
    min-width: 0 !important;
  }
  .paper-content {
    flex: 1 !important;
    min-width: 0 !important;
  }
  .paper-tags {
    float: none !important;
    margin: 0 0 15px 0 !important;
    justify-content: flex-start !important;
  }
}

/* 标题样式优化 */
.section-header {
  margin: 0 0 15px 0;
  color: #24292e;
  font-size: 18px;
  font-weight: 600;
  position: relative;
  padding-left: 20px;
}

.section-header::before {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  width: 4px;
  height: 100%;
  background: #0366d6;
  border-radius: 2px;
  animation: glow 3s ease-in-out infinite;
}

@keyframes glow {
  0%, 100% {
    opacity: 0.8;
  }
  50% {
    opacity: 1;
    box-shadow: 0 0 6px rgba(3, 102, 214, 0.6);
  }
}

/* 图片悬停效果 */
.paper-image img {
  cursor: pointer;
  transition: all 0.3s ease;
  border-radius: 8px;
}

.paper-image img:hover {
  transform: scale(1.02);
  box-shadow: 0 4px 20px rgba(0,0,0,0.15);
}

/* 图片放大模态框 */
.image-modal {
  display: none;
  position: fixed;
  z-index: 9999;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.85);
}

.image-modal img {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  max-width: 90%;
  max-height: 90%;
  border-radius: 8px;
  box-shadow: 0 10px 40px rgba(0,0,0,0.5);
}

.modal-close {
  position: absolute;
  top: 20px;
  right: 30px;
  color: white;
  font-size: 40px;
  font-weight: bold;
  cursor: pointer;
  z-index: 10000;
  background: rgba(0,0,0,0.5);
  width: 50px;
  height: 50px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: background 0.3s ease;
}

.modal-close:hover {
  background: rgba(0,0,0,0.8);
}

/* 文本截断和悬停显示 */
.text-truncate {
  display: block;
  overflow: visible;
  text-overflow: initial;
  cursor: default;
  transition: none;
  font-size: 12px !important;
  line-height: 1.65 !important;
  color: #64748b !important;
}

.text-truncate:hover {
  background: transparent;
}

/* Key Preprints 区域：更小字体与更紧凑留白 */
.preprints-section { font-size: 12px; }
.preprints-section .preprints-grid { display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 12px; margin-top: 12px; }
.preprints-section .paper-card { padding: 12px; margin: 0; gap: 12px; }
.preprints-section .paper-top { display: block; }
.preprints-section .paper-title { font-size: 13px; margin: 0; display: inline; }
.preprints-section .paper-meta { font-size: 11px; margin: 2px 0 0 0; }
.preprints-section .paper-badge, .preprints-section .paper-badge-link { font-size: 10px; padding: 1px 7px; }
.preprints-section .paper-badges { gap: 6px; margin-left: 6px; }
@media (max-width: 768px) {
  .preprints-section .preprints-grid { grid-template-columns: 1fr; }
}

/* Projects 区域：字号与 paper title 接近（不改变结构） */
#-projects + ul { font-size: 14px !important; color: #475569; line-height: 1.5; }
#-projects + ul a { color: #2563eb; }
#-projects + ul a:hover { text-decoration: underline; }

/* Internships 美化样式 */
.internships-container {
  display: flex;
  flex-direction: column;
  gap: 16px;
  margin: 20px 0;
}

.internship-card {
  background: linear-gradient(135deg, #ffffff 0%, #f8fafc 100%);
  border: 1px solid #e2e8f0;
  border-radius: 16px;
  padding: 0;
  overflow: hidden;
  transition: all 0.3s ease;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
}

.internship-card:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
  border-color: #cbd5e1;
}

.internship-card[open] {
  border-color: #c7d2fe;
  box-shadow: 0 10px 30px rgba(59, 130, 246, 0.12);
}

.internship-header {
  display: flex;
  align-items: stretch;
  cursor: pointer;
  user-select: none;
}

.internship-header:focus-visible {
  outline: 2px solid rgba(59, 130, 246, 0.45);
  outline-offset: -2px;
}


.internship-main {
  flex: 1;
  padding: 16px 20px;
  display: flex;
  flex-direction: column;
  gap: 6px;
}

.internship-title-row {
  display: flex;
  align-items: center;
  gap: 12px;
  margin-bottom: 4px;
}

.internship-title {
  font-size: 14px !important;
  font-weight: 700;
  color: #1e293b;
  margin: 0;
}

.internship-title a {
  color: #1e293b;
  text-decoration: none;
}

.internship-title a:hover {
  text-decoration: underline;
}

.internship-logo {
  height: 28px;
  padding: 4px 8px;
  background: #ffffff;
  border: 1px solid #e2e8f0;
  border-radius: 8px;
  box-shadow: 0 2px 6px rgba(15, 23, 42, 0.06);
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.internship-logo img {
  height: 100%;
  width: auto;
  max-width: 100px;
  object-fit: contain;
}

.internship-role {
  font-size: 13px !important;
  color: #475569;
  margin: 0;
}

.internship-location {
  font-size: 13px !important;
  color: #64748b;
  margin-left: 8px;
}

.internship-date {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  background: linear-gradient(135deg, #f1f5f9 0%, #e2e8f0 100%);
  color: #475569;
  padding: 4px 12px;
  border-radius: 20px;
  font-size: 11px;
  font-weight: 500;
  border: 1px solid #e2e8f0;
}

.internship-arrow {
  width: 40px;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #94a3b8;
  font-size: 14px;
  transition: transform 0.3s ease, color 0.3s ease;
  flex-shrink: 0;
}

.internship-card[open] .internship-arrow {
  transform: rotate(90deg);
  color: #3b82f6;
}

.internship-content {
  padding: 0 20px 20px 20px;
  color: #475569;
  font-size: 13px;
  line-height: 1.7;
  border-top: 1px solid #e2e8f0;
  margin-top: -1px;
}

.internship-content p {
  margin: 12px 0;
}

.internship-content ul {
  margin: 10px 0;
  padding-left: 20px;
}

.internship-content li {
  margin: 6px 0;
  color: #334155;
}

.internship-content li::marker {
  color: #3b82f6;
}

details.internship { border: none; margin: 0; padding: 0; background: none; }
details.internship summary { list-style: none; }
details.internship summary::-webkit-details-marker { display: none; }

/* Education 美化样式 */
.education-container {
  display: flex;
  flex-direction: column;
  gap: 20px;
  margin: 20px 0;
  position: relative;
}

.education-container::before {
  content: '';
  position: absolute;
  left: 37px;
  top: 20px;
  bottom: 20px;
  width: 3px;
  background: linear-gradient(180deg, #3b82f6 0%, #8b5cf6 50%, #ec4899 100%);
  border-radius: 2px;
}

.education-card {
  display: flex;
  align-items: flex-start;
  gap: 20px;
  position: relative;
  padding-left: 10px;
}

.education-dot {
  width: 56px;
  height: 56px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
  z-index: 1;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.12);
  background: #ffffff;
  border: 3px solid #e2e8f0;
  overflow: hidden;
  padding: 6px;
}

.education-dot img {
  width: 100%;
  height: 100%;
  object-fit: contain;
}

.education-dot.master {
  border-color: #3b82f6;
  box-shadow: 0 4px 15px rgba(59, 130, 246, 0.25);
}

.education-dot.bachelor {
  border-color: #8b5cf6;
  box-shadow: 0 4px 15px rgba(139, 92, 246, 0.25);
}

.education-info {
  flex: 1;
  background: linear-gradient(135deg, #ffffff 0%, #f8fafc 100%);
  border: 1px solid #e2e8f0;
  border-radius: 16px;
  padding: 20px 24px;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
  transition: all 0.3s ease;
}

.education-info:hover {
  transform: translateX(5px);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
}

.education-school {
  font-size: 14px !important;
  font-weight: 700;
  color: #1e293b;
  margin: 0 0 4px 0;
}

.education-degree {
  font-size: 13px !important;
  color: #64748b;
  margin: 0 0 10px 0;
  font-weight: 500;
}

.education-meta {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  align-items: center;
}

.education-date-badge {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  background: linear-gradient(135deg, #dbeafe 0%, #e0e7ff 100%);
  color: #1e40af;
  padding: 5px 12px;
  border-radius: 20px;
  font-size: 11px;
  font-weight: 600;
}

.education-gpa {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  background: linear-gradient(135deg, #dcfce7 0%, #d1fae5 100%);
  color: #166534;
  padding: 5px 12px;
  border-radius: 20px;
  font-size: 11px;
  font-weight: 600;
}

.education-honors {
  margin-top: 12px;
  padding-top: 12px;
  border-top: 1px dashed #e2e8f0;
}

.education-honors summary {
  cursor: pointer;
  color: #64748b;
  font-size: 12px;
  font-weight: 600;
  user-select: none;
}

.education-honors summary:hover {
  color: #3b82f6;
}

.education-honors-content {
  margin-top: 10px;
  color: #475569;
  font-size: 12px;
  line-height: 1.7;
}

.education-honors-content p {
  margin: 6px 0;
}

@media (max-width: 768px) {
  .education-container::before {
    left: 26px;
  }
  .education-card {
    padding-left: 0;
    gap: 12px;
  }
  .education-dot {
    width: 48px;
    height: 48px;
    padding: 5px;
  }
  .education-info {
    padding: 16px;
  }
}

/* Bio 折叠样式 */
details.bio { margin: 10px 0 16px 0; border: 1px solid #e5e7eb; border-radius: 8px; background: #ffffff; padding: 8px 12px; }
details.bio summary { cursor: pointer; user-select: none; outline: none; list-style: none; color: #334155; font-weight: 600; }
details.bio summary::-webkit-details-marker { display: none; }

/* About me 字号与 paper title 一致 */
.about-me {
  font-size: 14px;
  line-height: 1.65;
  color: #334155;
}
.about-me a { color: #2563eb; text-decoration: none; }
.about-me a:hover { text-decoration: underline; }

/* 自定义列表符号 */
.star-list {
  list-style: none;
}

.star-list li::before {
  content: "★";
  color: #ffd700;
  font-weight: bold;
  display: inline-block;
  width: 1em;
  margin-left: -1em;
  margin-right: 0.5em;
}

.square-list {
  list-style: none;
}

.square-list li::before {
  content: "■";
  color: #6c757d;
  font-weight: bold;
  display: inline-block;
  width: 1em;
  margin-left: -1em;
  margin-right: 0.5em;
}

/* 响应式调整 */
@media (max-width: 768px) {
  .modal-close {
    top: 15px;
    right: 20px;
    width: 40px;
    height: 40px;
    font-size: 30px;
  }
  
  .text-truncate:hover {
    padding: 8px;
  }
}
</style>

<!-- 图片放大模态框 -->
<div id="imageModal" class="image-modal">
  <span class="modal-close">&times;</span>
  <img id="modalImage" alt="">
</div>

<script>
// 图片点击放大功能
document.addEventListener('DOMContentLoaded', function() {
  const modal = document.getElementById('imageModal');
  const modalImg = document.getElementById('modalImage');
  const closeBtn = document.querySelector('.modal-close');
  
// 为所有论文图片添加点击事件
  const paperImages = document.querySelectorAll('.paper-image img, .paper-thumb img');
  paperImages.forEach(img => {
    img.addEventListener('click', function() {
      modal.style.display = 'block';
      modalImg.src = this.src;
      modalImg.alt = this.alt;
      document.body.style.overflow = 'hidden'; // 防止背景滚动
    });
  });
  
  // 关闭模态框
  function closeModal() {
    modal.style.display = 'none';
    document.body.style.overflow = 'auto'; // 恢复滚动
  }
  
  // 点击关闭按钮
  closeBtn.addEventListener('click', closeModal);
  
  // 点击背景关闭
  modal.addEventListener('click', function(e) {
    if (e.target === modal) {
      closeModal();
    }
  });
  
  // ESC键关闭
  document.addEventListener('keydown', function(e) {
    if (e.key === 'Escape') {
      closeModal();
    }
  });

  // Bib 复制功能
  document.querySelectorAll('.bib-copy').forEach(btn => {
    btn.addEventListener('click', function(e) {
      e.preventDefault();
      const bibId = this.getAttribute('data-bib');
      const bibPre = document.getElementById(bibId);
      if (bibPre) {
        const bibText = bibPre.textContent;
        navigator.clipboard.writeText(bibText).then(() => {
          const originalText = this.textContent;
          this.textContent = 'Copied!';
          this.classList.add('copied');
          setTimeout(() => {
            this.textContent = originalText;
            this.classList.remove('copied');
          }, 1500);
        });
      }
    });
  });
});
</script>

{% if site.google_scholar_stats_use_cdn %}
{% assign gsDataBaseUrl = "https://cdn.jsdelivr.net/gh/" | append: site.repository | append: "@" %}
{% else %}
{% assign gsDataBaseUrl = "https://raw.githubusercontent.com/" | append: site.repository | append: "/" %}
{% endif %}
{% assign url = gsDataBaseUrl | append: "google-scholar-stats/gs_data_shieldsio.json" %}

<span class='anchor' id='about-me'></span>

<div class="about-me">
I am Zhenhua Xu, a second‑year M.S. student (since Sep. 2024) in the College of Software at Zhejiang University, affiliated with the <a href="https://ifrc.zju.edu.cn/" target="_blank">Intelligence Fusion Research Center</a> (IFRC) and advised by <a href="https://scholar.google.com/citations?user=TnCrl1cAAAAJ" target="_blank">Meng Han</a>.

My research interests center on copyright protection for large language models, including model watermarking and fingerprinting, as well as broader topics in AI security (e.g., risks in agentic systems).

After joining Tencent <a href="https://open.youtu.qq.com/#/open" target="_blank">YouTu Lab</a> as an intern, my research scope expanded to improving general-purpose role-playing capability in base models via post-training (SFT, RLHF, etc.).

During my first year of graduate study, I coauthored several publications across conferences and journals with outstanding collaborators, including interns in our group, and I look forward to collaborating with more researchers.

If you are interested in my work, please contact me at <strong>xuzhenhua0326@zju.edu.cn</strong>.

<details class="bio">
  <summary>Chinese Bio (click to expand)</summary>
  <div style="margin-top:6px; color:#374151; line-height:1.7;">
    Hi~我是徐振华，浙江大学软件学院科研练习长达“一年半”的研二选手（2024级）！，隶属于<a href="https://ifrc.zju.edu.cn/" target="_blank">浙江大学数智融合研究中心实验室</a>，导师为 <a href="https://scholar.google.com/citations?user=TnCrl1cAAAAJ" target="_blank">韩蒙</a> 老师。
    我的研究方向主要为大模型版权保护（模型水印与模型指纹），以及在此之上的更广泛的人工智能安全议题（如智能体系统的安全风险等）。
    在加入<a href="https://open.youtu.qq.com/#/open" target="_blank">腾讯优图实验室</a>实习后，研究方向进一步扩展到通用大模型的角色扮演，以及在此基础上的后训练（SFT、RLHF 等）。
    在硕士第一年，我与多位优秀同学（包含组内实习生）合作，在多个国际会议与期刊发表了若干成果，并期待与更多研究者开展合作。
    如对我的工作感兴趣，欢迎邮件联系：<strong>xuzhenhua0326@zju.edu.cn</strong>。
  </div>
</details>

</div>

<style>
/* News 简化样式 */
.news-section {
  background: #f8fafc;
  border: 1px solid #e2e8f0;
  border-radius: 12px;
  padding: 20px;
  margin: 20px 0;
}

.news-header {
  display: flex;
  align-items: center;
  gap: 12px;
  margin-bottom: 12px;
}

.news-icon {
  width: 36px;
  height: 36px;
  background: #f97316;
  color: #ffffff;
  border-radius: 10px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 18px;
}

.news-title {
  font-size: 18px;
  font-weight: 600;
  color: #24292e;
  margin: 0;
}

.news-divider {
  flex: 1;
  height: 1px;
  background: #e2e8f0;
  margin-left: 12px;
}

.news-list {
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.news-item-card {
  background: #ffffff;
  border: 1px solid #e2e8f0;
  border-radius: 10px;
  padding: 10px 14px;
  display: flex;
  align-items: center;
  gap: 10px;
}

.news-date {
  background: #e2e8f0;
  color: #334155;
  padding: 2px 8px;
  border-radius: 9999px;
  font-size: 12px;
  font-weight: 600;
  flex-shrink: 0;
}

.news-emoji {
  font-size: 16px;
  flex-shrink: 0;
}

.news-text {
  color: #334155;
  font-size: 12px !important;
  font-weight: 500;
  flex: 1;
  line-height: 1.5;
}

.news-text strong {
  color: #0f172a;
}

.news-text a {
  color: #2563eb;
  text-decoration: none;
  font-weight: 600;
}

.news-text a:hover {
  text-decoration: underline;
}

.news-count {
  display: inline-block;
  padding: 0 6px;
  border-radius: 6px;
  background: #eef2ff;
  color: #4f46e5;
  font-weight: 700;
  font-size: 13px;
  margin: 0 2px;
}

.news-highlight {
  color: #64748b;
  font-weight: 500;
}
</style>

<div class="news-section">
  <div class="news-header">
    <div class="news-icon">🔥</div>
    <h2 class="news-title">News</h2>
    <div class="news-divider"></div>
  </div>
  
  <div class="news-list">
    <div class="news-item-card">
      <span class="news-date">2026.01</span>
      <span class="news-emoji">🎉</span>
      <span class="news-text">
        <strong><span class="news-count">Three</span> papers accepted by <a href="https://2026.ieeeicassp.org/event/about-conference/">ICASSP 2026</a></strong>
      </span>
    </div>

    <div class="news-item-card">
      <span class="news-date">2025.08</span>
      <span class="news-emoji">🎉</span>
      <span class="news-text">
        <strong><span class="news-count">Four</span> papers accepted by <a href="https://2025.emnlp.org/">EMNLP 2025</a></strong>
        <span class="news-highlight"> · 2 Main, 2 Findings</span>
      </span>
    </div>

    <div class="news-item-card">
      <span class="news-date">2025.08</span>
      <span class="news-emoji">🎉</span>
      <span class="news-text">
        <strong>One paper accepted by <a href="http://scis.scichina.com/">SCIENTIA SINICA Informationis</a></strong>
      </span>
    </div>

    <div class="news-item-card">
      <span class="news-date">2025.05</span>
      <span class="news-emoji">🎉</span>
      <span class="news-text">
        <strong>One paper accepted by <a href="https://2025.aclweb.org/">ACL 2025 Main Conference</a></strong>
      </span>
    </div>
  </div>
</div>

<h2 class="section-header" style="margin-top: 30px;"><span style="margin-right: 8px;">🚀</span>Projects</h2>

<ul style="font-size: 14px; color: #475569; line-height: 1.5; margin-top: 10px;">
  <li><a href="https://github.com/Xuzhenhua55/awesome-llm-copyright-protection" style="color: #2563eb;">Awesome LLM Copyright Protection</a> - A curated collection of research and techniques for protecting intellectual property of large language models, including watermarking, fingerprinting, and more. <a href="https://xuzhenhua55.github.io/awesome-llm-copyright-protection/" style="color: #2563eb;">[Website]</a><a href="https://arxiv.org/abs/2508.11548" style="color: #2563eb;">[Paper Link]</a></li>
</ul>

<h2 class="section-header" style="margin-top: 30px;"><span style="margin-right: 8px;">📝</span>Publications</h2> 

<!-- <div class='paper-box'><div class='paper-box-image'><div><div class="badge">CVPR 2016</div><img src='images/500x300.png' alt="sym" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[Deep Residual Learning for Image Recognition](https://openaccess.thecvf.com/content_cvpr_2016/papers/He_Deep_Residual_Learning_CVPR_2016_paper.pdf)

**Kaiming He**, Xiangyu Zhang, Shaoqing Ren, Jian Sun

[**Project**](https://scholar.google.com/citations?view_op=view_citation&hl=zh-CN&user=DhtAFkwAAAAJ&citation_for_view=DhtAFkwAAAAJ:ALROH1vI_8AC) <strong><span class='show_paper_citations' data='DhtAFkwAAAAJ:ALROH1vI_8AC'></span></strong>
- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ornare aliquet ipsum, ac tempus justo dapibus sit amet. 
</div>
</div> -->

<div style="background: rgba(255, 255, 255, 0.1); backdrop-filter: blur(10px); border: 1px solid rgba(255, 255, 255, 0.2); border-radius: 16px; padding: 15px; margin: 25px 0; box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);">
  <h2 class="section-header">Conference Papers</h2>
  
  <div class="paper-card">
    <!-- <div class="paper-thumb">
      <img src='images/papers/MEraser-Framework.png' alt="MEraser Framework">
    </div> -->
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://aclanthology.org/2025.acl-long.1455/">MEraser: An Effective Fingerprint Erasure Approach for Large Language Models</a><span class="paper-badges"><span class="paper-badge">ACL 2025 Main</span><span class="paper-badge" style="background:#28a745;">CCF-A</span><a href="https://github.com/fatdove77/MEraser" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-meraser">Bib</span></span></h3>
      </div>
      <p class="paper-meta">
        <strong style="color: #24292e;">Jingxuan Zhang</strong> and <strong style="color: #24292e;">Zhenhua Xu</strong> (co-first authors), Rui Hu, Wenpeng Xing, Xuhong Zhang, Meng Han
      </p>
      <p class="text-truncate" style="margin: 0;">
        We propose MEraser, a two-phase fine-tuning method that erases backdoor-based fingerprints from LLMs while preserving utility, transferring across models with minimal data and no repeated training.
      </p>
      <pre class="bib-data" id="bib-meraser">{% raw %}@inproceedings{zhangMEraserEffectiveFingerprint2025,
  title = {{{MEraser}}: {{An Effective Fingerprint Erasure Approach}} for {{Large Language Models}}},
  booktitle = {Proceedings of the 63rd {{Annual Meeting}} of the {{Association}} for {{Computational Linguistics}} ({{Volume}} 1: {{Long Papers}})},
  author = {Zhang, Jingxuan and Xu, Zhenhua and Hu, Rui and Xing, Wenpeng and Zhang, Xuhong and Han, Meng},
  editor = {Che, Wanxiang and Nabende, Joyce and Shutova, Ekaterina and Pilehvar, Mohammad Taher},
  year = 2025,
  pages = {30136--30153},
  publisher = {Association for Computational Linguistics},
  address = {Vienna, Austria},
  doi = {10.18653/v1/2025.acl-long.1455},
  urldate = {2025-11-14},
  isbn = {979-8-89176-251-0}
}{% endraw %}</pre>
    </div>
  </div>

  <div class="paper-card">
    <!-- <div class="paper-thumb">
      <img src='images/papers/EverTracer-Framework.png' alt="EverTracer Framework">
    </div> -->
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2509.03058">EverTracer: Hunting Stolen Large Language Models via Stealthy and Robust Probabilistic Fingerprint</a><span class="paper-badges"><span class="paper-badge">EMNLP 2025 Main</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><a href="https://github.com/Xuzhenhua55/EverTracer" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-evertracer">Bib</span></span></h3>
      </div>
      <p class="paper-meta">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Meng Han, Wenpeng Xing
      </p>
      <p class="text-truncate" style="margin: 0;">
        We propose EverTracer, a gray-box probabilistic fingerprint that leverages calibrated probability shifts from MIA-style memorization to enable stealthy, robust provenance tracing against input and model-level modifications.
      </p>
      <pre class="bib-data" id="bib-evertracer">{% raw %}@inproceedings{xuEverTracerHuntingStolen2025,
  title = {{{EverTracer}}: {{Hunting Stolen Large Language Models}} via {{Stealthy}} and {{Robust Probabilistic Fingerprint}}},
  booktitle = {Proceedings of the 2025 {{Conference}} on {{Empirical Methods}} in {{Natural Language Processing}}},
  author = {Xu, Zhenhua and Han, Meng and Xing, Wenpeng},
  editor = {Christodoulopoulos, Christos and Chakraborty, Tanmoy and Rose, Carolyn and Peng, Violet},
  year = 2025,
  pages = {7019--7042},
  publisher = {Association for Computational Linguistics},
  address = {Suzhou, China},
  doi = {10.18653/v1/2025.emnlp-main.358},
  urldate = {2025-11-14},
  isbn = {979-8-89176-332-6}
}{% endraw %}</pre>
    </div>
  </div>

  <div class="paper-card">
    <!-- <div class="paper-thumb">
      <img src='images/papers/CTCC-Framework.png' alt="CTCC Framework">
    </div> -->
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2509.09703">CTCC: A Robust and Stealthy Fingerprinting Framework for Large Language Models via Cross-Turn Contextual Correlation Backdoor</a><span class="paper-badges"><span class="paper-badge">EMNLP 2025 Main</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><a href="https://github.com/Xuzhenhua55/CTCC" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-ctcc">Bib</span></span></h3>
      </div>
      <p class="paper-meta">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Xixiang Zhao, Xubin Yue, shengwei tian, Changting Lin, Meng Han
      </p>
      <p class="text-truncate" style="margin: 0;">
        We propose CTCC, a rule-driven fingerprint that encodes cross-turn contextual correlations in dialogue to achieve black-box verification with higher stealth and robustness and reduced false positives.
      </p>
      <pre class="bib-data" id="bib-ctcc">{% raw %}@inproceedings{xuCTCCRobustStealthy2025,
  title = {{{CTCC}}: {{A Robust}} and {{Stealthy Fingerprinting Framework}} for {{Large Language Models}} via {{Cross-Turn Contextual Correlation Backdoor}}},
  booktitle = {Proceedings of the 2025 {{Conference}} on {{Empirical Methods}} in {{Natural Language Processing}}},
  author = {Xu, Zhenhua and Zhao, Xixiang and Yue, Xubin and Tian, Shengwei and Lin, Changting and Han, Meng},
  editor = {Christodoulopoulos, Christos and Chakraborty, Tanmoy and Rose, Carolyn and Peng, Violet},
  year = 2025,
  pages = {6978--7000},
  publisher = {Association for Computational Linguistics},
  address = {Suzhou, China},
  doi = {10.18653/v1/2025.emnlp-main.356},
  urldate = {2025-11-14},
  isbn = {979-8-89176-332-6}
}{% endraw %}</pre>
    </div>
  </div>
    
  <div class="paper-card">
    <!-- <div class="paper-thumb">
      <img src='images/papers/LoRA-FP-Framework.png' alt="LoRA-FP Framework">
    </div> -->
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2509.00820">Unlocking the Effectiveness of LoRA-FP for Seamless Transfer Implantation of Fingerprints in Downstream Models</a><span class="paper-badges"><span class="paper-badge">EMNLP 2025 Findings</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><a href="https://github.com/Xuzhenhua55/LoRA-FP" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-lorafp">Bib</span></span></h3>
      </div>
      <p class="paper-meta">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Zhaokun Yan, Binhan Xu, Xin Tong, Haitao Xu, Yourong Chen, Meng Han
      </p>
      <p class="text-truncate" style="margin: 0;">
        We propose LoRA-FP, a plug-and-play approach that encodes backdoor fingerprints into LoRA adapters and transfers them to downstream models via parameter fusion, enabling low-cost, robust, and contamination-free fingerprinting.
      </p>
      <pre class="bib-data" id="bib-lorafp">{% raw %}@inproceedings{xuUnlockingEffectivenessLoRAFP2025,
  title = {Unlocking the {{Effectiveness}} of {{LoRA-FP}} for {{Seamless Transfer Implantation}} of {{Fingerprints}} in {{Downstream Models}}},
  booktitle = {Findings of the {{Association}} for {{Computational Linguistics}}: {{EMNLP}} 2025},
  author = {Xu, Zhenhua and Yan, Zhaokun and Xu, Binhan and Tong, Xin and Xu, Haitao and Chen, Yourong and Han, Meng},
  editor = {Christodoulopoulos, Christos and Chakraborty, Tanmoy and Rose, Carolyn and Peng, Violet},
  year = 2025,
  pages = {4302--4312},
  publisher = {Association for Computational Linguistics},
  address = {Suzhou, China},
  doi = {10.18653/v1/2025.findings-emnlp.230},
  urldate = {2025-11-14},
  isbn = {979-8-89176-335-7}
}{% endraw %}</pre>
    </div>
  </div>


  <div class="paper-card">
    <!-- <div class="paper-thumb wide">
      <img src='images/papers/PREE-Framework.jpg' alt="PREE Framework">
    </div> -->
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2509.00918">        PREE: Towards Harmless and Adaptive Fingerprint Editing in Large Language Models via Knowledge Prefix Enhancement</a><span class="paper-badges"><span class="paper-badge">EMNLP 2025 Findings</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><span class="bib-copy" data-bib="bib-pree">Bib</span></span></h3>
      </div>
      <p class="paper-meta">
        <strong style="color: #24292e;">Xubin Yue</strong> and <strong style="color: #24292e;">Zhenhua Xu</strong> (co-first authors), Wenpeng Xing, Jiahui Yu, Mohan Li, Meng Han
      </p>
      <p class="text-truncate" style="margin: 0;">
        We propose PREE, a prefix-enhanced fingerprint editing framework that embeds copyright information as minimal parameter offsets via dual-channel knowledge editing, delivering high trigger precision and strong robustness under incremental fine-tuning and defenses.
      </p>
      <pre class="bib-data" id="bib-pree">{% raw %}@inproceedings{yuePREEHarmlessAdaptive2025,
  title = {{{PREE}}: {{Towards Harmless}} and {{Adaptive Fingerprint Editing}} in {{Large Language Models}} via {{Knowledge Prefix Enhancement}}},
  booktitle = {Findings of the {{Association}} for {{Computational Linguistics}}: {{EMNLP}} 2025},
  author = {Yue, Xubin and Xu, Zhenhua and Xing, Wenpeng and Yu, Jiahui and Li, Mohan and Han, Meng},
  editor = {Christodoulopoulos, Christos and Chakraborty, Tanmoy and Rose, Carolyn and Peng, Violet},
  year = 2025,
  pages = {3794--3804},
  publisher = {Association for Computational Linguistics},
  address = {Suzhou, China},
  doi = {10.18653/v1/2025.findings-emnlp.204},
  urldate = {2025-11-14},
  isbn = {979-8-89176-335-7}
}{% endraw %}</pre>
    </div>
  </div>

  <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2601.08223">DNF: Dual-Layer Nested Fingerprinting for Large Language Model Intellectual Property Protection</a><span class="paper-badges"><span class="paper-badge">ICASSP 2026</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><span class="bib-copy" data-bib="bib-dnf">Bib</span></span></h3>
      </div>
      <p class="paper-meta">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Yiran Zhao, Mengting Zhong, Dezhang Kong, Changting Lin, Tong Qiao, Meng Han
      </p>
      <p class="text-truncate" style="margin: 0;">
        We propose DNF, a dual-layer nested fingerprinting framework that couples domain-specific stylistic cues with implicit semantic triggers to embed hierarchical backdoor-based fingerprints into large language models, enabling black-box ownership verification with enhanced stealth and resilience to detection and filtering.
      </p>
      <pre class="bib-data" id="bib-dnf">{% raw %}@misc{xu2026dnfduallayernestedfingerprinting,
      title={DNF: Dual-Layer Nested Fingerprinting for Large Language Model Intellectual Property Protection},
      author={Zhenhua Xu and Yiran Zhao and Mengting Zhong and Dezhang Kong and Changting Lin and Tong Qiao and Meng Han},
      year={2026},
      eprint={2601.08223},
      archivePrefix={arXiv},
      primaryClass={cs.CR},
      url={https://arxiv.org/abs/2601.08223}, 
}{% endraw %}</pre>
    </div>
  </div>

  <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2601.08189">ForgetMark: Stealthy Fingerprint Embedding via Targeted Unlearning in Language Models</a><span class="paper-badges"><span class="paper-badge">ICASSP 2026</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><a href="https://github.com/Xuzhenhua55/ForgetMark" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-forgetmark">Bib</span></span></h3>
      </div>
      <p class="paper-meta">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Haobo Zhang, Zhebo Wang, Qichen Liu, Haitao Xu, Wenpeng Xing, Meng Han
      </p>
      <p class="text-truncate" style="margin: 0;">
        We propose ForgetMark, a targeted unlearning–based fingerprint that encodes model ownership via probabilistic forgetting traces, enabling stealthy and robust black-/gray-box verification with minimal performance impact and low false positives.
      </p>
      <pre class="bib-data" id="bib-forgetmark">{% raw %}@misc{xu2026forgetmarkstealthyfingerprintembedding,
      title={ForgetMark: Stealthy Fingerprint Embedding via Targeted Unlearning in Language Models},
      author={Zhenhua Xu and Haobo Zhang and Zhebo Wang and Qichen Liu and Haitao Xu and Wenpeng Xing and Meng Han},
      year={2026},
      eprint={2601.08189},
      archivePrefix={arXiv},
      primaryClass={cs.CR},
      url={https://arxiv.org/abs/2601.08189}, 
}{% endraw %}</pre>
    </div>
  </div>

</div>

<div style="background: rgba(255, 255, 255, 0.1); backdrop-filter: blur(10px); border: 1px solid rgba(255, 255, 255, 0.2); border-radius: 16px; padding: 15px; margin: 25px 0; box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);">
  <h2 class="section-header">Journal Papers</h2>
  
  <div class="paper-card">
    <!-- <div class="paper-thumb">
      <img src='images/papers/InSty-Framework.jpg' alt="InSty Framework">
    </div> -->
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://www.sciengine.com/SSI/doi/10.1360/SSI-2025-0022">InSty: A Robust Multi-Level Cross-Granularity Fingerprint Embedding Algorithm for Multi-Turn Dialogue in Large Language Models</a><span class="paper-badges"><span class="paper-badge">SCIENTIA SINICA Informationis</span><span class="paper-badge" style="background:#28a745;">SCI Q1/JCR Q1/CCF-A</span><span class="paper-badge" style="background:#6f42c1;">IF=7.6</span><span class="bib-copy" data-bib="bib-insty">Bib</span></span></h3>
      </div>
      <p class="paper-meta">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Meng Han, Xubin Yue, Wenpeng Xing 
      </p>
      <p class="text-truncate" style="margin: 0;">
        We propose InSty, a novel fingerprinting method for LLMs in multi-turn dialogues that embeds cross-granularity (word- and sentence-level) triggers across turns, enabling robust, stealthy, and high-recall IP protection under black-box settings.
      </p>
      <pre class="bib-data" id="bib-insty">{% raw %}@article{xuInStyRobustMultilevel2025,
  title = {{{InSty}}: A Robust Multi-Level Cross-Granularity Fingerprint Embedding Algorithm for Multi-Turn Dialogue in Large Language Models},
  author = {Xu, Zhenhua and Han, Meng and Yue, Xubin and Xing, Wenpeng},
  year = 2025,
  journal = {SCIENTIA SINICA Informationis},
  volume = {55},
  number = {8},
  pages = {1906},
  publisher = {Science China Press},
  issn = {1674-7267},
  doi = {10.1360/SSI-2025-0022}
}{% endraw %}</pre>
    </div>
  </div>
</div>

<div class="preprints-section" style="background: rgba(255, 255, 255, 0.1); backdrop-filter: blur(10px); border: 1px solid rgba(255, 255, 255, 0.2); border-radius: 16px; padding: 15px; margin: 25px 0; box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);">
  <h2 class="section-header">Key Preprints</h2>

  <div class="preprints-grid">
  <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2601.11007">AdaMARP: An Adaptive Multi-Agent Interaction Framework for General Immersive Role-Playing</a><span class="paper-badges"><span class="paper-badge paper-badge--star">★ Star</span><a href="https://xuzhenhua55.github.io/AdaMARP/" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-adamarp">Bib</span></span></h3>
      </div>
      <p class="paper-meta"><strong style="color: #24292e;">Zhenhua Xu</strong> and <strong style="color: #24292e;">Zhebo Wang</strong> (co-first authors), Dongsheng Chen, Shuo Wang, Jian Li, Chengjie Wang, Meng Han, Yabiao Wang</p>
      <pre class="bib-data" id="bib-adamarp">{% raw %}@misc{xu2026adamarpadaptivemultiagentinteraction,
      title={AdaMARP: An Adaptive Multi-Agent Interaction Framework for General Immersive Role-Playing},
      author={Zhenhua Xu and Dongsheng Chen and Shuo Wang and Jian Li and Chengjie Wang and Meng Han and Yabiao Wang},
      year={2026},
      eprint={2601.11007},
      archivePrefix={arXiv},
      primaryClass={cs.AI},
      url={https://arxiv.org/abs/2601.11007}, 
}{% endraw %}</pre>
    </div>
  </div>

  <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2505.06304">SRAF: Stealthy and Robust Adversarial Fingerprint for Copyright Verification of Large Language Models</a><span class="paper-badges"><span class="bib-copy" data-bib="bib-sraf">Bib</span></span></h3>
      </div>
      <p class="paper-meta"><strong style="color: #24292e;">Zhebo Wang</strong> and <strong style="color: #24292e;">Zhenhua Xu</strong> (co-first authors), Maike Li, Wenpeng Xing, Chunqiang Hu, Chen Zhi, Meng Han</p>
      <pre class="bib-data" id="bib-sraf">{% raw %}@misc{wang2026srafstealthyrobustadversarial,
      title={SRAF: Stealthy and Robust Adversarial Fingerprint for Copyright Verification of Large Language Models},
      author={Zhebo Wang and Zhenhua Xu and Maike Li and Wenpeng Xing and Chunqiang Hu and Chen Zhi and Meng Han},
      year={2026},
      eprint={2505.06304},
      archivePrefix={arXiv},
      primaryClass={cs.CR},
      url={https://arxiv.org/abs/2505.06304}, 
}{% endraw %}</pre>
    </div>
  </div>

  <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2508.11548">Copyright Protection for Large Language Models: A Survey of Methods, Challenges, and Trends</a><span class="paper-badges"><span class="paper-badge paper-badge--star">★ Star</span><a href="https://github.com/Xuzhenhua55/awesome-llm-copyright-protection" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-copyright">Bib</span></span></h3>
      </div>
      <p class="paper-meta"><strong style="color: #24292e;">Zhenhua Xu</strong>, Xubin Yue, Zhebo Wang, Qichen Liu, Xixiang Zhao, et al.</p>
      <pre class="bib-data" id="bib-copyright">{% raw %}@article{xu2025copyright,
  title={Copyright Protection for Large Language Models: A Survey of Methods, Challenges, and Trends},
  author={Xu, Zhenhua and Yue, Xubin and Wang, Zhebo and Liu, Qichen and Zhao, Xixiang and Zhang, Jingxuan and Zeng, Wenjun and Xing, Wengpeng and Kong, Dezhang and Lin, Changting and others},
  journal={arXiv preprint arXiv:2508.11548},
  year={2025}
}{% endraw %}</pre>
    </div>
  </div>

  <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2409.08846">Fingerprint Vector: Enabling Scalable and Efficient Model Fingerprint Transfer via Vector Addition</a><span class="paper-badges"><a href="https://github.com/Xuzhenhua55/Fingerprint-Vector" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-fpvector">Bib</span></span></h3>
      </div>
      <p class="paper-meta"><strong style="color: #24292e;">Zhenhua Xu</strong>, Qichen Liu, Zhebo Wang, Wenpeng Xing, Dezhang Kong, Mohan Li, Meng Han</p>
      <pre class="bib-data" id="bib-fpvector">{% raw %}@misc{xu2025fingerprintvectorenablingscalable,
      title={Fingerprint Vector: Enabling Scalable and Efficient Model Fingerprint Transfer via Vector Addition},
      author={Zhenhua Xu and Qichen Liu and Zhebo Wang and Wenpeng Xing and Dezhang Kong and Mohan Li and Meng Han},
      year={2025},
      eprint={2409.08846},
      archivePrefix={arXiv},
      primaryClass={cs.CR},
      url={https://arxiv.org/abs/2409.08846}, 
}{% endraw %}</pre>
    </div>
  </div>

  <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2506.19676">A Survey of LLM-Driven AI Agent Communication: Protocols, Security Risks, and Defense Countermeasures</a><span class="paper-badges"><a href="https://github.com/theshi-1128/awesome-agent-communication-security" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-agentsurvey">Bib</span></span></h3>
      </div>
      <p class="paper-meta">Dezhang Kong, Shi Lin, <strong style="color: #24292e;">Zhenhua Xu</strong>, Zhebo Wang, Minghao Li, et al.</p>
      <pre class="bib-data" id="bib-agentsurvey">{% raw %}@misc{kong2025surveyllmdrivenaiagent,
      title={A Survey of LLM-Driven AI Agent Communication: Protocols, Security Risks, and Defense Countermeasures},
      author={Dezhang Kong and Shi Lin and Zhenhua Xu and Zhebo Wang and Minghao Li and Yufeng Li and Yilun Zhang and Hujin Peng and Xiang Chen and Zeyang Sha and Yuyuan Li and Changting Lin and Xun Wang and Xuan Liu and Ningyu Zhang and Chaochao Chen and Chunming Wu and Muhammad Khurram Khan and Meng Han},
      year={2025},
      eprint={2506.19676},
      archivePrefix={arXiv},
      primaryClass={cs.CR},
      url={https://arxiv.org/abs/2506.19676}, 
}{% endraw %}</pre>
    </div>
  </div>

  <!-- <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2505.06304">RAP-SM: Robust Adversarial Prompt via Shadow Models for Copyright Verification of Large Language Models</a></h3>
      </div>
      <p class="paper-meta"><strong style="color: #24292e;">Zhebo Wang</strong> and <strong style="color: #24292e;">Zhenhua Xu</strong> (co-first authors), Maike Li, Wenpeng Xing, Chunqiang Hu, Chen Zhi, Meng Han</p>
    </div>
  </div> -->

  <!-- <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2506.19676">A Survey of LLM-Driven AI Agent Communication: Protocols, Security Risks, and Defense Countermeasures</a></h3>
      </div>
      <p class="paper-meta">Dezhang Kong, Shi Lin, <strong style="color: #24292e;">Zhenhua Xu</strong>, Zhebo Wang, Minghao Li, Yufeng Li, et al.</p>
    </div>
  </div> -->
</div>
</div>

<!-- # 🎖 Honors and Awards -->


<h2 class="section-header" style="margin-top: 30px;"><span style="margin-right: 8px;">💻</span>Internships</h2>

<div class="internships-container">

<details class="internship-card">
  <summary class="internship-header">
    <div class="internship-main">
      <div class="internship-title-row">
        <div class="internship-logo"><img src="images/tencentyoutu.jpg" alt="Tencent YouTu Lab"></div>
        <h3 class="internship-title"><a href="https://open.youtu.qq.com/#/open">Tencent YouTu Lab</a></h3>
      </div>
      <p class="internship-role">LLM Algorithm Intern (Research) <span class="internship-location">Shanghai, China</span></p>
      <span class="internship-date">📅 November 2025 - Present</span>
    </div>
    <div class="internship-arrow">▸</div>
  </summary>
  <div class="internship-content">
    <p><strong>Primary Responsibilities:</strong> Conducting research on LLM role-playing to improve character consistency, dialogue fluency, and narrative engagement when models portray custom or specific characters.</p>
    <p><strong>Key Contributions:</strong></p>
    <ul>
      <li>Proposed AdaMARP, an adaptive multi-agent role-playing framework featuring an immersive message format and an explicit Scene Manager for orchestration. Trained an Actor Model on AdaRPSet for enhanced character consistency, and a Scene Manager on AdaSMSet for smoother transitions and natural role introductions—8B Actor outperforms commercial LLMs, 14B Scene Manager surpasses Claude Sonnet 4.5</li>
    </ul>
  </div>
</details>

<details class="internship-card">
  <summary class="internship-header">
    <div class="internship-main">
      <div class="internship-title-row">
        <div class="internship-logo"><img src="images/GenTel-Research.png" alt="GenTel Research"></div>
        <h3 class="internship-title">
          <a href="http://ibj.zju.edu.cn/">Zhejiang University Binjiang Institute</a> and <a href="https://gentel.io/zh/home">GenTel.io</a>
        </h3>
      </div>
      <p class="internship-role">Research Intern - AI Security <span class="internship-location">Hangzhou, China</span></p>
      <span class="internship-date">📅 July 2024 - October 2025</span>
    </div>
    <div class="internship-arrow">▸</div>
  </summary>
  <div class="internship-content">
    <p><strong>Primary Responsibilities:</strong> Conducting research on large language model security and AI ecosystem governance, focusing on model copyright protection (digital watermarking and model fingerprinting), jailbreak attacks and defenses, adversarial attack strategies, and agent system security risks.</p>
    <p><strong>Key Contributions:</strong></p>
    <ul>
      <li>Led 10+ high-quality research projects as first author and co-first author, with 10+ papers submitted to top-tier conferences and journals including ACL, EMNLP, AAAI, ICASSP, and SCIENTIA SINICA</li>
      <li>Independently mentored multiple interns through complete research workflows, from topic selection and methodology design to experimental replication and paper writing</li>
      <li>Filed 8 invention patents, achieving initial industrial transformation and intellectual property implementation of research outcomes</li>
    </ul>
  </div>
</details>

<details class="internship-card">
  <summary class="internship-header">
    <div class="internship-main">
      <div class="internship-title-row">
        <div class="internship-logo"><img src="images/LianlianPay.png" alt="LianLianPay"></div>
        <h3 class="internship-title"><a href="https://www.lianlianpay.com/home">LianLianPay</a></h3>
      </div>
      <p class="internship-role">Java Backend Development Engineer <span class="internship-location">Hangzhou, China</span></p>
      <span class="internship-date">📅 November 2023 - May 2024</span>
    </div>
    <div class="internship-arrow">▸</div>
  </summary>
  <div class="internship-content">
    <p><strong>Primary Responsibilities:</strong> As a backend development engineer, participated in the development and maintenance of the "Account+" payment system. This system is one of the company's core business platforms, primarily responsible for managing merchant partnerships and associated user information, handling financial operations between the company and merchants including account recharge, internal fund transfers, withdrawals, and reconciliation processes.</p>
  </div>
</details>

</div>

<h2 class="section-header" style="margin-top: 30px;"><span style="margin-right: 8px;">📖</span>Educations</h2>

<div class="education-container">

  <div class="education-card">
    <div class="education-dot master"><img src="images/universities/ZJU-LOGO.png" alt="ZJU"></div>
    <div class="education-info">
      <h3 class="education-school">Zhejiang University</h3>
      <p class="education-degree">College of Software · Master of Software Engineering</p>
      <div class="education-meta">
        <span class="education-date-badge">📅 September 2024 - June 2027 (Expected)</span>
        <span class="education-gpa">📊 GPA: 4.27/5.0</span>
      </div>
      <details class="education-honors">
        <summary>🏆 Selected Honors (click to expand)</summary>
        <div class="education-honors-content">
          <p><strong>🥇 Honors and Awards:</strong> Outstanding Graduate Student (First Year), Five-Good Graduate Student (First Year)</p>
          <p><strong>💰 Scholarships:</strong> 2025 National Scholarship (First Year)</p>
        </div>
      </details>
    </div>
  </div>

  <div class="education-card">
    <div class="education-dot bachelor"><img src="images/universities/ZJUT-LOGO.png" alt="ZJUT"></div>
    <div class="education-info">
      <h3 class="education-school">Zhejiang University of Technology</h3>
      <p class="education-degree">Bachelor of Digital Media Technology</p>
      <div class="education-meta">
        <span class="education-date-badge">📅 September 2020 - June 2024</span>
        <span class="education-gpa">📊 GPA: 3.84/5.0</span>
      </div>
      <details class="education-honors">
        <summary>🏆 Selected Honors and Notes (click to expand)</summary>
        <div class="education-honors-content">
          <p><strong>🥇 Honors and Awards:</strong> Comprehensive Assessment: 100/100 (Ranked 1st in Major), Outstanding Graduate of Zhejiang Province, Outstanding Student Award</p>
          <p><strong>💰 Scholarships:</strong> Zhejiang Provincial Government Scholarship (Top 5%), First-Class Scholarship for Outstanding Students (Top 2%), First-Class Academic Scholarship</p>
          <p><em>📝 Note:</em> Digital Media Technology is a computer science major covering fundamental courses including Computer Networks, Data Structures, Operating Systems, and Computer Architecture. While the program later specializes in game design, human-computer interaction, and 3D animation programming, my academic focus shifted toward artificial intelligence and software development, leading to my current pursuit in software engineering.</p>
        </div>
      </details>
    </div>
  </div>

</div>
