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
  margin: 10px 0;
  padding: 12px 14px;
  border: 1px solid #e5e1da;
  border-radius: 6px;
  background: rgba(255, 255, 255, 0.6);
  box-shadow: none;
  transition: background 0.12s, border-color 0.12s;
}
.paper-card:hover { background: rgba(255, 255, 255, 0.85); border-color: #d4d0c8; }

.paper-thumb {
  flex: 0 0 180px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgba(240, 237, 232, 0.6);
  border: 1px solid #e5e1da;
  border-radius: 6px;
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

.paper-badges { display: inline-flex; gap: 4px; flex-wrap: wrap; margin-right: 8px; align-items: center; vertical-align: middle; }

.paper-badge {
  background: #2563eb;
  color: #fff;
  padding: 0 5px;
  border-radius: 3px;
  font-size: 11px;
  font-weight: 600;
  line-height: 18px;
  height: 18px;
}

.paper-badge--star {
  background: linear-gradient(135deg, #ff6b6b 0%, #ee5a24 100%);
  color: #ffffff;
}

.paper-badge-link {
  background: #2563eb;
  color: #ffffff !important;
  padding: 0 5px;
  border-radius: 3px;
  font-size: 11px;
  font-weight: 600;
  line-height: 18px;
  height: 18px;
  text-decoration: none;
  display: inline-flex;
  align-items: center;
}
.paper-badge-link:hover { background: #1d4ed8; color: #ffffff !important; }

.bib-copy {
  background: #6b7280;
  color: #ffffff !important;
  padding: 0 5px;
  border-radius: 3px;
  font-size: 11px;
  font-weight: 600;
  line-height: 18px;
  height: 18px;
  cursor: pointer;
  transition: all 0.2s ease;
  display: inline-flex;
  align-items: center;
  text-decoration: none;
}
.bib-copy:hover { background: #4b5563; color: #ffffff !important; }
.bib-copy.copied { background: #10b981; }
.bib-data { display: none; }

.paper-title a { color: #2563eb; text-decoration: none; }
.paper-title a:hover { color: #1d4ed8; text-decoration: underline; }
.paper-title { margin: 0 0 6px 0; font-size: 14px !important; line-height: 1.35; color: #1a1a1a; display: inline; }
.paper-meta { margin: 0 0 8px 0; color: #64748b; font-size: 12px !important; font-weight: 500; }
.paper-meta strong { font-size: inherit; }
.paper-bib { margin-top: 6px; }
.paper-bib summary { cursor: pointer; font-size: 11px; color: #2563eb; list-style: none; }
.paper-bib summary::-webkit-details-marker { display: none; }
.paper-bib pre {
  margin: 6px 0 0 0;
  padding: 8px;
  background: rgba(240, 237, 232, 0.6);
  border: 1px solid #e5e1da;
  border-radius: 6px;
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
  font-size: 13px !important;
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
.preprints-section .paper-meta { font-size: 12px; margin: 2px 0 0 0; }
.preprints-section .paper-badge, .preprints-section .paper-badge-link { font-size: 11px; padding: 0 5px; line-height: 18px; height: 18px; }
.preprints-section .paper-badges { gap: 4px; margin-right: 6px; vertical-align: middle; }
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
  gap: 0;
  margin: 24px 0;
  position: relative;
  padding-left: 28px;
}

.internships-container::before {
  content: '';
  position: absolute;
  left: 7px;
  top: 12px;
  bottom: 12px;
  width: 2px;
  background: linear-gradient(180deg, #6366f1 0%, #3b82f6 50%, #06b6d4 100%);
  border-radius: 2px;
  opacity: 0.5;
}

.internship-card {
  position: relative;
  background: #ffffff;
  border: 1px solid #e8edf5;
  border-radius: 14px;
  padding: 0;
  overflow: hidden;
  transition: all 0.25s ease;
  box-shadow: 0 2px 10px rgba(15, 23, 42, 0.04);
  margin-bottom: 16px;
}

.internship-card::before {
  content: '';
  position: absolute;
  left: -28px;
  top: 22px;
  width: 10px;
  height: 10px;
  border-radius: 50%;
  background: #ffffff;
  border: 2px solid #6366f1;
  z-index: 1;
  transition: background 0.25s ease, border-color 0.25s ease;
}

.internship-card:nth-child(2)::before { border-color: #3b82f6; }
.internship-card:nth-child(3)::before { border-color: #06b6d4; }

.internship-card:hover::before { background: #6366f1; }
.internship-card:nth-child(2):hover::before { background: #3b82f6; }
.internship-card:nth-child(3):hover::before { background: #06b6d4; }

.internship-card[open]::before { background: #6366f1; }
.internship-card:nth-child(2)[open]::before { background: #3b82f6; }
.internship-card:nth-child(3)[open]::before { background: #06b6d4; }

.internship-card::after {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  bottom: 0;
  width: 3px;
  background: linear-gradient(180deg, #6366f1, #818cf8);
  border-radius: 14px 0 0 14px;
  opacity: 0;
  transition: opacity 0.25s ease;
}

.internship-card:nth-child(2)::after { background: linear-gradient(180deg, #3b82f6, #60a5fa); }
.internship-card:nth-child(3)::after { background: linear-gradient(180deg, #06b6d4, #22d3ee); }

.internship-card:hover::after,
.internship-card[open]::after {
  opacity: 1;
}

.internship-card:hover {
  transform: translateX(3px);
  box-shadow: 0 6px 20px rgba(15, 23, 42, 0.08);
  border-color: #d1d9e6;
}

.internship-card[open] {
  box-shadow: 0 8px 24px rgba(99, 102, 241, 0.1);
  border-color: #c7d2fe;
}

.internship-card:nth-child(2)[open] {
  box-shadow: 0 8px 24px rgba(59, 130, 246, 0.1);
  border-color: #bfdbfe;
}

.internship-card:nth-child(3)[open] {
  box-shadow: 0 8px 24px rgba(6, 182, 212, 0.1);
  border-color: #a5f3fc;
}

.internship-header {
  display: flex;
  align-items: stretch;
  cursor: pointer;
  user-select: none;
  padding: 0;
}

.internship-header:focus-visible {
  outline: 2px solid rgba(99, 102, 241, 0.4);
  outline-offset: -2px;
  border-radius: 14px;
}

.internship-main {
  flex: 1;
  padding: 16px 18px 14px 18px;
  display: flex;
  flex-direction: column;
  gap: 5px;
}

.internship-title-row {
  display: flex;
  align-items: center;
  gap: 10px;
  margin-bottom: 2px;
}

.internship-title {
  font-size: 14px !important;
  font-weight: 700;
  color: #1e293b;
  margin: 0;
  line-height: 1.3;
}

.internship-title a {
  color: #1e293b;
  text-decoration: none;
  transition: color 0.2s;
}

.internship-title a:hover {
  color: #6366f1;
  text-decoration: none;
}

.internship-logo {
  height: 26px;
  padding: 3px 7px;
  background: #f8fafc;
  border: 1px solid #e8edf5;
  border-radius: 7px;
  box-shadow: 0 1px 4px rgba(15, 23, 42, 0.05);
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.internship-logo img {
  height: 100%;
  width: auto;
  max-width: 90px;
  object-fit: contain;
}

.internship-meta {
  display: flex;
  align-items: center;
  flex-wrap: wrap;
  gap: 8px;
  margin-top: 2px;
}

.internship-role {
  font-size: 12.5px !important;
  color: #334155;
  margin: 0;
  font-weight: 500;
}

.internship-location {
  display: inline-flex;
  align-items: center;
  gap: 3px;
  font-size: 11.5px !important;
  color: #64748b;
  background: #f1f5f9;
  padding: 2px 8px;
  border-radius: 10px;
  border: 1px solid #e2e8f0;
}

.internship-location::before {
  content: '';
  font-size: 10px;
}

.internship-date {
  display: inline-flex;
  align-items: center;
  gap: 5px;
  background: linear-gradient(135deg, #f0f4ff 0%, #e8eeff 100%);
  color: #4f46e5;
  padding: 3px 10px;
  border-radius: 20px;
  font-size: 11px;
  font-weight: 500;
  border: 1px solid #c7d2fe;
  letter-spacing: 0.01em;
}

.internship-card:nth-child(2) .internship-date {
  background: linear-gradient(135deg, #eff6ff 0%, #dbeafe 100%);
  color: #1d4ed8;
  border-color: #bfdbfe;
}

.internship-card:nth-child(3) .internship-date {
  background: linear-gradient(135deg, #ecfeff 0%, #cffafe 100%);
  color: #0e7490;
  border-color: #a5f3fc;
}

.internship-arrow {
  width: 36px;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #cbd5e1;
  font-size: 12px;
  transition: transform 0.3s ease, color 0.3s ease;
  flex-shrink: 0;
  border-left: 1px solid #f1f5f9;
}

.internship-card[open] .internship-arrow {
  transform: rotate(90deg);
  color: #6366f1;
}

.internship-card:nth-child(2)[open] .internship-arrow { color: #3b82f6; }
.internship-card:nth-child(3)[open] .internship-arrow { color: #06b6d4; }

.internship-content {
  padding: 14px 18px 16px 18px;
  color: #475569;
  font-size: 12.5px;
  line-height: 1.75;
  border-top: 1px dashed #e8edf5;
  background: linear-gradient(180deg, #fafbff 0%, #ffffff 100%);
}

.internship-content p {
  margin: 8px 0;
}

.internship-content strong {
  color: #1e293b;
  font-weight: 600;
}

.internship-content ul {
  margin: 8px 0;
  padding-left: 18px;
}

.internship-content li {
  margin: 5px 0;
  color: #334155;
}

.internship-content li::marker {
  color: #6366f1;
}

.internship-card:nth-child(2) .internship-content li::marker { color: #3b82f6; }
.internship-card:nth-child(3) .internship-content li::marker { color: #06b6d4; }

details.internship-card summary { list-style: none; }
details.internship-card summary::-webkit-details-marker { display: none; }

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
  font-size: 13px;
  font-weight: 600;
  user-select: none;
}

.education-honors summary:hover {
  color: #3b82f6;
}

.education-honors-content {
  margin-top: 10px;
  color: #475569;
  font-size: 13px;
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
I am Zhenhua Xu, a second‑year M.S. student (since Sep. 2024) in the College of Software at Zhejiang University, affiliated with the <a href="https://ifrc-zju.github.io/" target="_blank">Intelligence Fusion Research Center</a> (IFRC) and advised by <a href="https://scholar.google.com/citations?user=TnCrl1cAAAAJ" target="_blank">Meng Han</a>.

My research interests center on copyright protection for large language models, including model watermarking and fingerprinting, as well as broader topics in AI security (e.g., risks in agentic systems).

After joining Tencent <a href="https://open.youtu.qq.com/#/open" target="_blank">YouTu Lab</a> as an intern, my research scope expanded to improving general-purpose role-playing capability in base models via post-training (SFT, RLHF, etc.).

During my first year of graduate study, I coauthored several publications across conferences and journals with outstanding collaborators, including interns in our group, and I look forward to collaborating with more researchers.

If you are interested in my work, please contact me at <strong>xuzhenhua0326@zju.edu.cn</strong>.

<details class="bio">
  <summary>Chinese Bio (click to expand)</summary>
  <div style="margin-top:6px; color:#374151; line-height:1.7;">
    Hi~我是徐振华，浙江大学软件学院科研练习长达“一年半”的研二选手（2024级）！，隶属于<a href="https://ifrc-zju.github.io/" target="_blank">浙江大学数智融合研究中心实验室</a>，导师为 <a href="https://scholar.google.com/citations?user=TnCrl1cAAAAJ" target="_blank">韩蒙</a> 老师。
    我的研究方向主要为大模型版权保护（模型水印与模型指纹），以及在此之上的更广泛的人工智能安全议题（如智能体系统的安全风险等）。
    在加入<a href="https://open.youtu.qq.com/#/open" target="_blank">腾讯优图实验室</a>实习后，研究方向进一步扩展到通用大模型的角色扮演，以及在此基础上的后训练（SFT、RLHF 等）。
    在硕士第一年，我与多位优秀同学（包含组内实习生）合作，在多个国际会议与期刊发表了若干成果，并期待与更多研究者开展合作。
    如对我的工作感兴趣，欢迎邮件联系：<strong>xuzhenhua0326@zju.edu.cn</strong>。
  </div>
</details>

</div>

<style>
/* News — handwritten minimal style (inspired by tianxingchen.github.io) */
@import url('https://fonts.googleapis.com/css2?family=Caveat:wght@400;600;700&family=JetBrains+Mono:wght@400;500&display=swap');

.news-block {
  --news-text: #1a1a1a;
  --news-muted: #666;
  --news-accent: #2563eb;
  --news-accent-hover: #1d4ed8;
  --news-border: #d4d0c8;
  --news-tag-bg: #f0ede8;
  --news-panel-bg: rgba(255, 255, 255, 0.52);
  margin: 20px 0 30px;
}

.news-block .news-title {
  font-family: 'Caveat', cursive;
  font-size: 2rem;
  font-weight: 700;
  color: var(--news-text);
  margin: 0 0 10px;
  line-height: 1.15;
}

.news-block .news-panel {
  background: var(--news-panel-bg);
  border: 1px solid var(--news-border);
  border-radius: 6px;
  padding: 6px 10px 8px;
}

.news-block .news-list {
  list-style: none;
  display: flex;
  flex-direction: column;
  gap: 1px;
  margin: 0;
  padding: 0;
  border-left: none;
}

.news-block .news-item {
  display: flex;
  align-items: baseline;
  gap: 10px;
  padding: 4px 6px;
  margin: 0;
  background: transparent;
  border: none;
  border-radius: 4px;
  transition: background 0.12s;
  position: static;
}
.news-block .news-item::before { content: none; }
.news-block .news-item:hover { background: rgba(0, 0, 0, 0.035); }

.news-block .news-date {
  flex-shrink: 0;
  font-family: 'JetBrains Mono', 'Courier New', monospace;
  font-size: 0.64rem;
  font-weight: 500;
  color: var(--news-muted);
  letter-spacing: 0.03em;
  line-height: 1.25;
  padding: 2px 6px;
  margin: 0;
  background: var(--news-tag-bg);
  border: 1px solid var(--news-border);
  border-radius: 3px;
}

.news-block .news-content {
  color: var(--news-text);
  min-width: 0;
  font-size: 0.87rem !important;
  font-weight: 400;
  line-height: 1.42;
}
.news-block .news-content strong { color: var(--news-text); font-weight: 600; }
.news-block .news-content a { color: var(--news-accent); font-weight: 500; text-decoration: none; }
.news-block .news-content a:hover { color: var(--news-accent-hover); text-decoration: underline; }

.news-block .news-hidden { display: none; }
.news-block .news-list.news-expanded .news-hidden { display: flex; }

.news-block .news-toggle {
  margin-top: 6px;
  width: 100%;
  background: none;
  border: none;
  border-top: 1px dashed var(--news-border);
  border-radius: 0;
  padding: 7px 0 2px;
  font-family: 'JetBrains Mono', 'Courier New', monospace;
  font-size: 0.7rem;
  color: var(--news-muted);
  cursor: pointer;
  transition: color 0.15s;
}
.news-block .news-toggle:hover { color: var(--news-accent); }

@media (max-width: 768px) {
  .news-block .news-item { flex-direction: column; align-items: flex-start; gap: 3px; padding: 5px 6px; }
  .news-block .news-list.news-expanded .news-hidden { flex-direction: column; align-items: flex-start; }
}
</style>

<div class="news-block" id="-news">
  <h2 class="news-title">News</h2>
  <div class="news-panel">
    <ul class="news-list" id="news-list">
      <li class="news-item">
        <span class="news-date">04/2026</span>
        <span class="news-content">🎉 <strong>Four</strong> papers accepted by <a href="https://2026.aclweb.org/" target="_blank">ACL 2026</a> · 1 Main, 3 Findings !</span>
      </li>
      <li class="news-item">
        <span class="news-date">01/2026</span>
        <span class="news-content">🎉 <strong>Three</strong> papers accepted by <a href="https://2026.ieeeicassp.org/event/about-conference/" target="_blank">ICASSP 2026</a> !</span>
      </li>
      <li class="news-item">
        <span class="news-date">08/2025</span>
        <span class="news-content">🎉 <strong>Four</strong> papers accepted by <a href="https://2025.emnlp.org/" target="_blank">EMNLP 2025</a> · 2 Main, 2 Findings !</span>
      </li>
      <li class="news-item">
        <span class="news-date">08/2025</span>
        <span class="news-content">🎉 One paper accepted by <a href="http://scis.scichina.com/" target="_blank">SCIENTIA SINICA Informationis</a> !</span>
      </li>
      <li class="news-item">
        <span class="news-date">05/2025</span>
        <span class="news-content">🎉 One paper accepted by <a href="https://2025.aclweb.org/" target="_blank">ACL 2025 Main Conference</a> !</span>
      </li>
    </ul>
  </div>
</div>

<style>
.art-title {
  font-family: 'Caveat', cursive;
  font-size: 2rem;
  font-weight: 700;
  color: #1a1a1a;
  margin: 30px 0 10px;
  line-height: 1.15;
  padding-left: 0;
}
.art-title::before { content: none; }
</style>

<h2 class="art-title">Projects</h2>

<ul style="font-size: 14px; color: #475569; line-height: 1.5; margin-top: 10px;">
  <li><a href="https://github.com/Xuzhenhua55/awesome-llm-copyright-protection" style="color: #2563eb;">Awesome LLM Copyright Protection</a> - A curated collection of research and techniques for protecting intellectual property of large language models, including watermarking, fingerprinting, and more. <a href="https://xuzhenhua55.github.io/awesome-llm-copyright-protection/" style="color: #2563eb;">[Website]</a><a href="https://arxiv.org/abs/2508.11548" style="color: #2563eb;">[Paper Link]</a></li>
</ul>

<h2 class="art-title" id="-publications">Publications</h2> 

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
        <h3 class="paper-title"><a href="https://aclanthology.org/2025.acl-long.1455/">MEraser: An Effective Fingerprint Erasure Approach for Large Language Models</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="paper-badge">ACL 2025 Main</span><span class="paper-badge" style="background:#28a745;">CCF-A</span><a href="https://github.com/fatdove77/MEraser" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-meraser">Bib</span></span><strong style="color: #24292e;">Jingxuan Zhang</strong> and <strong style="color: #24292e;">Zhenhua Xu</strong> (co-first authors), Rui Hu, Wenpeng Xing, Xuhong Zhang, Meng Han
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
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2509.03058">EverTracer: Hunting Stolen Large Language Models via Stealthy and Robust Probabilistic Fingerprint</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="paper-badge">EMNLP 2025 Main</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><a href="https://github.com/Xuzhenhua55/EverTracer" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-evertracer">Bib</span></span><strong style="color: #24292e;">Zhenhua Xu</strong>, Meng Han, Wenpeng Xing
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
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2509.09703">CTCC: A Robust and Stealthy Fingerprinting Framework for Large Language Models via Cross-Turn Contextual Correlation Backdoor</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="paper-badge">EMNLP 2025 Main</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><a href="https://github.com/Xuzhenhua55/CTCC" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-ctcc">Bib</span></span><strong style="color: #24292e;">Zhenhua Xu</strong>, Xixiang Zhao, Xubin Yue, shengwei tian, Changting Lin, Meng Han
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
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2509.00820">Unlocking the Effectiveness of LoRA-FP for Seamless Transfer Implantation of Fingerprints in Downstream Models</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="paper-badge">EMNLP 2025 Findings</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><a href="https://github.com/Xuzhenhua55/LoRA-FP" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-lorafp">Bib</span></span><strong style="color: #24292e;">Zhenhua Xu</strong>, Zhaokun Yan, Binhan Xu, Xin Tong, Haitao Xu, Yourong Chen, Meng Han
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
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2509.00918">PREE: Towards Harmless and Adaptive Fingerprint Editing in Large Language Models via Knowledge Prefix Enhancement</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="paper-badge">EMNLP 2025 Findings</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><span class="bib-copy" data-bib="bib-pree">Bib</span></span><strong style="color: #24292e;">Xubin Yue</strong> and <strong style="color: #24292e;">Zhenhua Xu</strong> (co-first authors), Wenpeng Xing, Jiahui Yu, Mohan Li, Meng Han
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
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2601.08223">DNF: Dual-Layer Nested Fingerprinting for Large Language Model Intellectual Property Protection</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="paper-badge">ICASSP 2026</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><span class="bib-copy" data-bib="bib-dnf">Bib</span></span><strong style="color: #24292e;">Zhenhua Xu</strong>, Yiran Zhao, Mengting Zhong, Dezhang Kong, Changting Lin, Tong Qiao, Meng Han
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
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2601.08189">ForgetMark: Stealthy Fingerprint Embedding via Targeted Unlearning in Language Models</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="paper-badge">ICASSP 2026</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><a href="https://github.com/Xuzhenhua55/ForgetMark" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-forgetmark">Bib</span></span><strong style="color: #24292e;">Zhenhua Xu</strong>, Haobo Zhang, Zhebo Wang, Qichen Liu, Haitao Xu, Wenpeng Xing, Meng Han
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

  <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2601.12986">KinGuard: Hierarchical Kinship-Aware Fingerprinting to Defend Against Large Language Model Stealing</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="paper-badge">ICASSP 2026</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><span class="bib-copy" data-bib="bib-kinguard">Bib</span></span><strong style="color: #24292e;">Zhenhua Xu</strong>, Xiaoning Tian, Wenjun Zeng, Wenpeng Xing, Tianliang Lu, Gaolei Li, Chaochao Chen, Meng Han
      </p>
      <p class="text-truncate" style="margin: 0;">
        We propose KinGuard, a hierarchical kinship-aware fingerprinting framework that models derivation relationships among LLM variants to enable fine-grained provenance tracing and robust defense against model stealing attacks.
      </p>
      <pre class="bib-data" id="bib-kinguard">{% raw %}@misc{xu2026kinguardhierarchicalkinshipawarefingerprinting,
      title={KinGuard: Hierarchical Kinship-Aware Fingerprinting to Defend Against Large Language Model Stealing}, 
      author={Zhenhua Xu and Xiaoning Tian and Wenjun Zeng and Wenpeng Xing and Tianliang Lu and Gaolei Li and Chaochao Chen and Meng Han},
      year={2026},
      eprint={2601.12986},
      archivePrefix={arXiv},
      primaryClass={cs.CR},
      url={https://arxiv.org/abs/2601.12986}, 
}{% endraw %}</pre>
    </div>
  </div>

  <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2601.11007">AdaMARP: An Adaptive Multi-Agent Interaction Framework for General Immersive Role-Playing</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="paper-badge">ACL 2026 Findings</span><span class="paper-badge" style="background:#28a745;">CCF-A</span><a href="https://xuzhenhua55.github.io/AdaMARP" target="_blank" class="paper-badge-link">Website</a></span><strong style="color: #24292e;">Zhenhua Xu</strong>, Dongsheng Chen, Shuo Wang, Jian Li, Chengjie Wang, Meng Han, Yabiao Wang
      </p>
      <p class="text-truncate" style="margin: 0;">
        We propose an adaptive multi-agent role-playing framework, AdaMARP, featuring an immersive message format that interleaves [Thought], (Action), &lt;Environment&gt;, and Speech, together with an explicit Scene Manager that governs role-playing through discrete actions (init_scene, pick_speaker, switch_scene, add_role, end) accompanied by rationales. To train these capabilities, we construct AdaRPSet for the Actor Model and AdaSMSet for supervising orchestration decisions, and introduce AdaptiveBench for trajectory-level evaluation.
      </p>
    </div>
  </div>

  <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2604.05502">AttnDiff: Attention-based Differential Fingerprinting for Large Language Models</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="paper-badge">ACL 2026 Main</span><span class="paper-badge" style="background:#28a745;">CCF-A</span></span><strong style="color: #24292e;">Haobo Zhang</strong> and <strong style="color: #24292e;">Zhenhua Xu</strong> (co-first authors), Junxian Li, Shangfeng Sheng, Dezhang Kong, Meng Han
      </p>
      <p class="text-truncate" style="margin: 0;">
        We propose AttnDiff, a data-efficient white-box framework that extracts fingerprints from models via intrinsic information-routing behavior. AttnDiff probes minimally edited prompt pairs that induce controlled semantic conflicts, captures differential attention patterns, summarizes them with compact spectral descriptors, and compares models using CKA.
      </p>
    </div>
  </div>

  <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://scholar.google.com/citations?view_op=view_citation&hl=zh-CN&user=yDX0t54AAAAJ&citation_for_view=yDX0t54AAAAJ:zYLM7Y9cAGgC">Web Fraud Attacks Against LLM-Driven Multi-Agent Systems</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="paper-badge">ACL 2026 Findings</span><span class="paper-badge" style="background:#28a745;">CCF-A</span><a href="https://github.com/JiangYingEr/Web-Fraud-Attack-in-MAS" target="_blank" class="paper-badge-link">GitHub</a></span>Dezhang Kong, Hujin Peng, Yilun Zhang, Lele Zhao, <strong style="color: #24292e;">Zhenhua Xu</strong>, Shi Lin, Changting Lin, Meng Han <span style="margin-left:6px; color:#7c3aed; font-size:12px; font-weight:500;">(co-corresponding authors: Zhenhua Xu, Meng Han)</span>
      </p>
      <p class="text-truncate" style="margin: 0;">
        We propose Web Fraud Attacks, a novel type of attack manipulating unique structures of web links to deceive MAS. We design 12 representative attack variants that encompass various methods, such as homoglyph deception, sub-directory nesting, and parameter obfuscation.
      </p>
    </div>
  </div>

  <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://scholar.google.com/citations?view_op=view_citation&hl=zh-CN&user=yDX0t54AAAAJ&citation_for_view=yDX0t54AAAAJ:8k81kl-MbHgC">MalURLBench: A Benchmark Evaluating Agents' Vulnerabilities When Processing Web URLs</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="paper-badge">ACL 2026 Findings</span><span class="paper-badge" style="background:#28a745;">CCF-A</span><a href="https://github.com/JiangYingEr/MalURLBench" target="_blank" class="paper-badge-link">GitHub</a></span>Dezhang Kong, Zhuxi Wu, Shiqi Liu, ZhiCheng Tan, Kuichen Lu, Minghao Li, Qichen Liu, Shengyu Chu, <strong style="color: #24292e;">Zhenhua Xu</strong>, Xuan Liu, Meng Han <span style="margin-left:6px; color:#7c3aed; font-size:12px; font-weight:500;">(co-corresponding authors: Zhenhua Xu, Meng Han)</span>
      </p>
      <p class="text-truncate" style="margin: 0;">
        We propose MalURLBench, the first benchmark for evaluating LLMs' vulnerabilities to malicious URLs. MalURLBench contains 61,845 attack instances spanning 10 real-world scenarios and 7 categories of real malicious websites.
      </p>
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
        <h3 class="paper-title"><a href="https://www.sciengine.com/SSI/doi/10.1360/SSI-2025-0022">InSty: A Robust Multi-Level Cross-Granularity Fingerprint Embedding Algorithm for Multi-Turn Dialogue in Large Language Models</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="paper-badge">SCIENTIA SINICA Informationis</span><span class="paper-badge" style="background:#28a745;">SCI Q1/JCR Q1/CCF-A</span><span class="paper-badge" style="background:#6f42c1;">IF=7.6</span><span class="bib-copy" data-bib="bib-insty">Bib</span></span><strong style="color: #24292e;">Zhenhua Xu</strong>, Meng Han, Xubin Yue, Wenpeng Xing
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
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2505.06304">SRAF: Stealthy and Robust Adversarial Fingerprint for Copyright Verification of Large Language Models</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="bib-copy" data-bib="bib-sraf">Bib</span></span><strong style="color: #24292e;">Zhebo Wang</strong> and <strong style="color: #24292e;">Zhenhua Xu</strong> (co-first authors), Maike Li, Wenpeng Xing, Chunqiang Hu, Chen Zhi, Meng Han</p>
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
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2508.11548">Copyright Protection for Large Language Models: A Survey of Methods, Challenges, and Trends</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><span class="paper-badge paper-badge--star">★ Star</span><a href="https://github.com/Xuzhenhua55/awesome-llm-copyright-protection" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-copyright">Bib</span></span><strong style="color: #24292e;">Zhenhua Xu</strong>, Xubin Yue, Zhebo Wang, Qichen Liu, Xixiang Zhao, et al.</p>
      <pre class="bib-data" id="bib-copyright">{% raw %}@misc{xu2025copyrightprotectionlargelanguage,
      title={Copyright Protection for Large Language Models: A Survey of Methods, Challenges, and Trends},
      author={Zhenhua Xu and Xubin Yue and Zhebo Wang and Qichen Liu and Xixiang Zhao and Jingxuan Zhang and Wenjun Zeng and Wengpeng Xing and Dezhang Kong and Changting Lin and Meng Han},
      year={2025},
      eprint={2508.11548},
      archivePrefix={arXiv},
      primaryClass={cs.CR},
      url={https://arxiv.org/abs/2508.11548}, 
}{% endraw %}</pre>
    </div>
  </div>

  <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2409.08846">Fingerprint Vector: Enabling Scalable and Efficient Model Fingerprint Transfer via Vector Addition</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><a href="https://github.com/Xuzhenhua55/Fingerprint-Vector" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-fpvector">Bib</span></span><strong style="color: #24292e;">Zhenhua Xu</strong>, Qichen Liu, Zhebo Wang, Wenpeng Xing, Dezhang Kong, Mohan Li, Meng Han</p>
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
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2506.19676">A Survey of LLM-Driven AI Agent Communication: Protocols, Security Risks, and Defense Countermeasures</a></h3>
      </div>
      <p class="paper-meta"><span class="paper-badges"><a href="https://github.com/theshi-1128/awesome-agent-communication-security" target="_blank" class="paper-badge-link">Code</a><span class="bib-copy" data-bib="bib-agentsurvey">Bib</span></span>Dezhang Kong, Shi Lin, <strong style="color: #24292e;">Zhenhua Xu</strong>, Zhebo Wang, Minghao Li, et al.</p>
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


<style>
/* CV lists (Experience / Education) — handwritten minimal style */
.cv-block {
  --cv-text: #1a1a1a;
  --cv-muted: #666;
  --cv-accent: #2563eb;
  --cv-accent-hover: #1d4ed8;
  --cv-border: #d4d0c8;
  --cv-tag-bg: #f0ede8;
  --cv-panel-bg: rgba(255, 255, 255, 0.52);
  margin: 30px 0 0;
}

.cv-block .cv-title {
  font-family: 'Caveat', cursive;
  font-size: 2rem;
  font-weight: 700;
  color: var(--cv-text);
  margin: 0 0 10px;
  line-height: 1.15;
}

.cv-block .cv-panel {
  background: var(--cv-panel-bg);
  border-top: 1px solid var(--cv-border);
  border-bottom: 1px solid var(--cv-border);
  border-left: none;
  border-right: none;
  border-radius: 0;
  padding: 2px 10px;
}

.cv-block .cv-item {
  display: grid;
  grid-template-columns: 88px 150px 1fr;
  gap: 0 16px;
  align-items: center;
  padding: 14px 6px;
  border-bottom: 1px solid var(--cv-border);
}
.cv-block .cv-item:last-child { border-bottom: none; }

.cv-block .cv-period {
  font-family: 'JetBrains Mono', 'Courier New', monospace;
  font-size: 0.64rem;
  font-weight: 500;
  color: var(--cv-muted);
  letter-spacing: 0.03em;
  line-height: 1.5;
  text-align: center;
}

.cv-block .cv-logo {
  display: flex;
  align-items: center;
  justify-content: center;
}
.cv-block .cv-logo img {
  max-width: 100%;
  max-height: 56px;
  object-fit: contain;
  border-radius: 4px;
}

.cv-block .cv-content { min-width: 0; }
.cv-block .cv-org {
  font-size: 0.97rem;
  font-weight: 600;
  color: var(--cv-text);
  line-height: 1.35;
}
.cv-block .cv-org a { color: var(--cv-text); text-decoration: none; }
.cv-block .cv-org a:hover { color: var(--cv-accent); text-decoration: underline; }
.cv-block .cv-role {
  font-size: 0.86rem;
  color: var(--cv-muted);
  font-style: normal;
  margin-top: 2px;
  line-height: 1.4;
}
.cv-block .cv-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 6px;
  margin-top: 6px;
}
.cv-block .cv-tag {
  font-family: 'JetBrains Mono', 'Courier New', monospace;
  font-size: 0.62rem;
  font-weight: 500;
  color: var(--cv-muted);
  letter-spacing: 0.02em;
  padding: 2px 7px;
  background: var(--cv-tag-bg);
  border: 1px solid var(--cv-border);
  border-radius: 3px;
}

.cv-block .cv-detail { margin-top: 8px; }
.cv-block .cv-detail summary {
  cursor: pointer;
  list-style: none;
  font-family: 'JetBrains Mono', 'Courier New', monospace;
  font-size: 0.68rem;
  color: var(--cv-muted);
  user-select: none;
  transition: color 0.15s;
}
.cv-block .cv-detail summary::-webkit-details-marker { display: none; }
.cv-block .cv-detail summary:hover { color: var(--cv-accent); }
.cv-block .cv-detail[open] summary { color: var(--cv-accent); }
.cv-block .cv-detail-body {
  margin-top: 6px;
  font-size: 0.85rem;
  line-height: 1.65;
  color: #475569;
}
.cv-block .cv-detail-body p { margin: 4px 0; }
.cv-block .cv-detail-body strong { color: var(--cv-text); }

@media (max-width: 768px) {
  .cv-block .cv-item { grid-template-columns: 70px 92px 1fr; gap: 0 10px; }
  .cv-block .cv-logo img { max-height: 40px; }
}
</style>

<div class="cv-block" id="-internships">
  <h2 class="cv-title">Research Experience</h2>
  <div class="cv-panel">

    <div class="cv-item">
      <div class="cv-period">Nov 2025<br>—<br>Present</div>
      <div class="cv-logo"><img src="images/tencentyoutu.jpg" alt="Tencent YouTu Lab"></div>
      <div class="cv-content">
        <div class="cv-org"><a href="https://open.youtu.qq.com/#/open" target="_blank">Tencent YouTu Lab</a></div>
        <div class="cv-role">LLM Algorithm Intern (Research) · Shanghai, China</div>
        <details class="cv-detail">
          <summary>Details ▾</summary>
          <div class="cv-detail-body">
            <p><strong>Primary Responsibilities:</strong> Conducting research on LLM role-playing to improve character consistency, dialogue fluency, and narrative engagement when models portray custom or specific characters.</p>
          </div>
        </details>
      </div>
    </div>

    <div class="cv-item">
      <div class="cv-period">Jul 2024<br>—<br>Oct 2025</div>
      <div class="cv-logo"><img src="images/GenTel-Research.png" alt="GenTel Research"></div>
      <div class="cv-content">
        <div class="cv-org"><a href="http://ibj.zju.edu.cn/" target="_blank">ZJU Binjiang Institute</a> / <a href="https://gentel.io/zh/home" target="_blank">GenTel.io</a></div>
        <div class="cv-role">Research Intern – AI Security · Hangzhou, China</div>
        <details class="cv-detail">
          <summary>Details ▾</summary>
          <div class="cv-detail-body">
            <p><strong>Primary Responsibilities:</strong> Conducting research on large language model security and AI ecosystem governance, focusing on model copyright protection (digital watermarking and model fingerprinting), jailbreak attacks and defenses, adversarial attack strategies, and agent system security risks.</p>
          </div>
        </details>
      </div>
    </div>

    <div class="cv-item">
      <div class="cv-period">Nov 2023<br>—<br>May 2024</div>
      <div class="cv-logo"><img src="images/LianlianPay.png" alt="LianLianPay"></div>
      <div class="cv-content">
        <div class="cv-org"><a href="https://www.lianlianpay.com/home" target="_blank">LianLianPay</a></div>
        <div class="cv-role">Java Backend Development Engineer · Hangzhou, China</div>
        <details class="cv-detail">
          <summary>Details ▾</summary>
          <div class="cv-detail-body">
            <p><strong>Primary Responsibilities:</strong> As a backend development engineer, participated in the development and maintenance of the "Account+" payment system. This system is one of the company's core business platforms, primarily responsible for managing merchant partnerships and associated user information, handling financial operations between the company and merchants including account recharge, internal fund transfers, withdrawals, and reconciliation processes.</p>
          </div>
        </details>
      </div>
    </div>

  </div>
</div>

<div class="cv-block" id="-educations">
  <h2 class="cv-title">Education</h2>
  <div class="cv-panel">

    <div class="cv-item">
      <div class="cv-period">Sep 2024<br>—<br>Jun 2027<br>(expected)</div>
      <div class="cv-logo"><img src="images/universities/ZJU-LOGO.png" alt="ZJU"></div>
      <div class="cv-content">
        <div class="cv-org">Zhejiang University</div>
        <div class="cv-role">College of Software · Master of Software Engineering</div>
        <div class="cv-tags">
          <span class="cv-tag">GPA 4.27/5.0</span>
        </div>
        <details class="cv-detail">
          <summary>Selected Honors ▾</summary>
          <div class="cv-detail-body">
            <p><strong>Honors and Awards:</strong> Outstanding Graduate Student (First Year), Five-Good Graduate Student (First Year)</p>
            <p><strong>Scholarships:</strong> 2025 National Scholarship (First Year)</p>
          </div>
        </details>
      </div>
    </div>

    <div class="cv-item">
      <div class="cv-period">Sep 2020<br>—<br>Jun 2024</div>
      <div class="cv-logo"><img src="images/universities/ZJUT-LOGO.png" alt="ZJUT"></div>
      <div class="cv-content">
        <div class="cv-org">Zhejiang University of Technology</div>
        <div class="cv-role">Bachelor of Digital Media Technology</div>
        <div class="cv-tags">
          <span class="cv-tag">GPA 3.84/5.0</span>
        </div>
        <details class="cv-detail">
          <summary>Selected Honors &amp; Notes ▾</summary>
          <div class="cv-detail-body">
            <p><strong>Honors and Awards:</strong> Comprehensive Assessment: 100/100 (Ranked 1st in Major), Outstanding Graduate of Zhejiang Province, Outstanding Student Award</p>
            <p><strong>Scholarships:</strong> Zhejiang Provincial Government Scholarship (Top 5%), First-Class Scholarship for Outstanding Students (Top 2%), First-Class Academic Scholarship</p>
            <p><em>Note:</em> Digital Media Technology is a computer science major covering fundamental courses including Computer Networks, Data Structures, Operating Systems, and Computer Architecture. While the program later specializes in game design, human-computer interaction, and 3D animation programming, my academic focus shifted toward artificial intelligence and software development, leading to my current pursuit in software engineering.</p>
          </div>
        </details>
      </div>
    </div>

  </div>
</div>

<style>
.site-footer {
  margin: 44px 0 8px;
  padding-top: 18px;
  border-top: 1px solid #d4d0c8;
  text-align: center;
  font-family: 'JetBrains Mono', 'Courier New', monospace;
  color: #666;
}
.site-footer p {
  margin: 0 0 12px;
  font-size: 0.72rem;
  letter-spacing: 0.02em;
}
.site-footer .footer-badge img {
  height: 20px;
  vertical-align: middle;
}
</style>

<footer class="site-footer">
  <p>&copy; Zhenhua Xu &nbsp;&middot;&nbsp; Latest updated Jun. 2026</p>
  <span class="footer-badge">
    <img src="https://visitor-badge.laobi.icu/badge?page_id=xuzhenhua55.github.io&left_color=%232ccce4&right_color=%230158f9&left_text=visitors" alt="visitor badge">
  </span>
</footer>
