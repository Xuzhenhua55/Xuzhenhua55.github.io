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
  font-size: 11px;
  font-weight: 600;
  box-shadow: 0 2px 4px rgba(0,0,0,0.08);
}

.paper-badge-link {
  background: #2563eb;
  color: #ffffff !important;
  padding: 2px 8px;
  border-radius: 999px;
  font-size: 11px;
  font-weight: 700;
  box-shadow: 0 2px 4px rgba(0,0,0,0.08);
  text-decoration: none;
  display: inline-block;
  border: 1px solid rgba(255,255,255,0.3);
}
.paper-badge-link:hover { background: #1d4ed8; color: #ffffff !important; }

.paper-title a { color: #0366d6; text-decoration: none; }
.paper-title { margin: 0 0 8px 0; font-size: 16px; line-height: 1.35; color: #24292e; display: inline; }
.paper-meta { margin: 0 0 10px 0; color: #586069; font-size: 14px; font-weight: 500; }

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
  font-size: 20px;
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
  font-size: 15px !important;
  line-height: 1.75 !important;
  color: #374151 !important;
}

.text-truncate:hover {
  background: transparent;
}

/* Key Preprints 区域：更小字体与更紧凑留白 */
.preprints-section { font-size: 14px; }
.preprints-section .paper-card { padding: 12px; margin: 12px 0; gap: 12px; }
.preprints-section .paper-title { font-size: 15px; margin: 0 0 6px 0; }
.preprints-section .paper-meta { font-size: 13px; margin: 0; }
.preprints-section .paper-badge, .preprints-section .paper-badge-link { font-size: 10px; padding: 1px 7px; }
.preprints-section .paper-badges { gap: 6px; margin-left: 6px; }

/* Internships 折叠样式 */
details.internship { margin: 12px 0; border: 1px solid #e5e7eb; border-radius: 8px; background: #ffffff; padding: 10px 12px; }
details.internship summary { cursor: pointer; user-select: none; outline: none; list-style: none; display: flex; align-items: center; gap: 8px; }
details.internship summary::-webkit-details-marker { display: none; }
details.internship summary::before { content: '▸'; color: #64748b; transition: transform 0.2s ease; }
details.internship[open] summary::before { transform: rotate(90deg); }

/* Bio 折叠样式 */
details.bio { margin: 10px 0 16px 0; border: 1px solid #e5e7eb; border-radius: 8px; background: #ffffff; padding: 8px 12px; }
details.bio summary { cursor: pointer; user-select: none; outline: none; list-style: none; color: #334155; font-weight: 600; }
details.bio summary::-webkit-details-marker { display: none; }

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
});
</script>

{% if site.google_scholar_stats_use_cdn %}
{% assign gsDataBaseUrl = "https://cdn.jsdelivr.net/gh/" | append: site.repository | append: "@" %}
{% else %}
{% assign gsDataBaseUrl = "https://raw.githubusercontent.com/" | append: site.repository | append: "/" %}
{% endif %}
{% assign url = gsDataBaseUrl | append: "google-scholar-stats/gs_data_shieldsio.json" %}

<span class='anchor' id='about-me'></span>

I am Zhenhua Xu, a second‑year M.S. student (since Sep. 2024) in the College of Software at Zhejiang University, affiliated with the Intelligence Fusion Research Center (IFRC) (<a href="https://gentellab.github.io/index.html" target="_blank">Lab Homepage</a>) and advised by <a href="https://scholar.google.com/citations?user=TnCrl1cAAAAJ" target="_blank">Meng Han</a>.

My research interests center on copyright protection for large language models, including model watermarking and fingerprinting. I also work on broader topics in AI security—such as risks in agentic systems—and maintain an active interest in reinforcement learning.

During my first year of graduate study, I coauthored several publications across conferences and journals with outstanding collaborators, including interns in our group. I am actively seeking collaborations with research‑minded peers (undergraduates and master’s students preparing for further study are welcome) and with fellow researchers.

If you are interested in my work, please contact me at <strong>xuzhenhua0326@zju.edu.cn</strong>.

<details class="bio">
  <summary>Chinese Bio (click to expand)</summary>
  <div style="margin-top:6px; color:#374151; line-height:1.7;">
    Hi~我是徐振华，浙江大学软件学院科研练习长达“一年半”的研二选手（2024级）！，隶属于浙江大学数智融合研究中心实验室
    （<a href="https://gentellab.github.io/index.html" target="_blank">实验室主页</a>），导师为 <a href="https://scholar.google.com/citations?user=TnCrl1cAAAAJ" target="_blank">韩蒙</a> 教授。
    我的研究方向主要为大模型版权保护（模型水印与模型指纹），以及在此之上的更广泛的人工智能安全议题（如智能体系统的安全风险等），同时也涉猎强化学习相关内容。
    在硕士第一年，我与多位优秀同学（包含组内实习生）合作，在多个国际会议与期刊发表了若干成果。目前我也在寻找对科研有热情的合作者（欢迎有保研/升学计划的本科生与硕士生），并期待与更多研究者开展合作。
    如对我的工作感兴趣，欢迎邮件联系：<strong>xuzhenhua0326@zju.edu.cn</strong>。
  </div>
</details>


<div style="background: linear-gradient(135deg, #f8fafc 0%, #f1f5f9 50%, #e2e8f0 100%); border: 1px solid rgba(148, 163, 184, 0.2); border-radius: 16px; padding: 24px; margin: 20px 0; position: relative; overflow: hidden; box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);">
  
  <!-- Section Header -->
  <div style="display: flex; align-items: center; margin-bottom: 20px; padding-bottom: 16px; border-bottom: 1px solid rgba(148, 163, 184, 0.15);">
    <div style="background: #e5e7eb; width: 32px; height: 32px; border-radius: 50%; display: flex; align-items: center; justify-content: center; margin-right: 12px;">
      <span style="font-size: 18px;">🔥</span>
    </div>
    <h2 style="margin: 0; font-size: 24px; font-weight: 700; color: #1e293b;">News</h2>
    <div style="flex: 1; height: 2px; background: linear-gradient(90deg, rgba(59, 130, 246, 0.3), transparent); margin-left: 16px; border-radius: 1px;"></div>
  </div>
  
  <!-- Simplified background: remove decorative grid and particles -->
  
  <style>
    @keyframes float {
      0%, 100% { transform: translateY(0px) rotate(0deg); opacity: 0.4; }
      50% { transform: translateY(-10px) rotate(180deg); opacity: 0.8; }
    }
    .news-item { transition: none; }
    .news-badge { background: #dbeafe !important; color: #1e40af !important; box-shadow: none !important; }
  </style>
  
  <div class="news-item" style="background: #ffffff; border: 1px solid rgba(203, 213, 225, 0.7); border-radius: 10px; padding: 12px 16px; margin-bottom: 8px; display: flex; align-items: center;">
    <span class="news-badge" style="padding: 4px 10px; border-radius: 16px; font-size: 10px; font-weight: 600; margin-right: 10px; flex-shrink: 0;">2025.08</span>
    <span style="font-size: 16px; margin-right: 8px; flex-shrink: 0;">🎉</span>
    <span style="color: #334155; font-size: 14px; font-weight: 500; flex: 1;">
      <strong>Four papers accepted by <a href="https://2025.emnlp.org/" style="color: #2563eb; text-decoration: none; font-weight: 600; border-bottom: 1px solid transparent;">EMNLP 2025</a></strong>
      · 2 Main, 2 Findings
    </span>
  </div>

  <div class="news-item" style="background: #ffffff; border: 1px solid rgba(203, 213, 225, 0.7); border-radius: 10px; padding: 12px 16px; margin-bottom: 8px; display: flex; align-items: center;">
    <span class="news-badge" style="padding: 4px 10px; border-radius: 16px; font-size: 10px; font-weight: 600; margin-right: 10px; flex-shrink: 0;">2025.08</span>
    <span style="font-size: 16px; margin-right: 8px; flex-shrink: 0;">🎉</span>
    <span style="color: #334155; font-size: 14px; font-weight: 500; flex: 1;">
      <strong>One paper accepted by <a href="http://scis.scichina.com/" style="color: #2563eb; text-decoration: none; font-weight: 600; border-bottom: 1px solid transparent;">SCIENTIA SINICA Informationis</a></strong>
    </span>
  </div>

  <div class="news-item" style="background: #ffffff; border: 1px solid rgba(203, 213, 225, 0.7); border-radius: 10px; padding: 12px 16px; display: flex; align-items: center;">
    <span class="news-badge" style="padding: 4px 10px; border-radius: 16px; font-size: 10px; font-weight: 600; margin-right: 10px; flex-shrink: 0;">2025.05</span>
    <span style="font-size: 16px; margin-right: 8px; flex-shrink: 0;">🎉</span>
    <span style="color: #334155; font-size: 14px; font-weight: 500; flex: 1;">
      <strong>One paper accepted by <a href="https://2025.aclweb.org/" style="color: #2563eb; text-decoration: none; font-weight: 600; border-bottom: 1px solid transparent;">ACL 2025 Main Conference</a></strong>
    </span>
  </div>
  
</div>

# 🚀 Projects
- [Awesome LLM Copyright Protection](https://github.com/Xuzhenhua55/awesome-llm-copyright-protection) - A curated collection of research and techniques for protecting intellectual property of large language models, including watermarking, fingerprinting, and more. [[Website]](https://xuzhenhua55.github.io/awesome-llm-copyright-protection/)[[Paper Link]](https://arxiv.org/abs/2508.11548)

# 📝 Publications 

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
        <h3 class="paper-title"><a href="https://aclanthology.org/2025.acl-long.1455/">MEraser: An Effective Fingerprint Erasure Approach for Large Language Models</a><span class="paper-badges"><span class="paper-badge">ACL 2025 Main</span><span class="paper-badge" style="background:#28a745;">CCF-A</span><a href="https://github.com/fatdove77/MEraser" target="_blank" class="paper-badge-link">Code</a></span></h3>
      </div>
      <p class="paper-meta">
        <strong style="color: #24292e;">Jingxuan Zhang</strong> and <strong style="color: #24292e;">Zhenhua Xu</strong> (co-first authors), Rui Hu, Wenpeng Xing, Xuhong Zhang, Meng Han
      </p>
      <p class="text-truncate" style="margin: 0; color: #24292e; line-height: 1.6; font-size: 14px;">
        We propose MEraser, a two-phase fine-tuning method that erases backdoor-based fingerprints from LLMs while preserving utility, transferring across models with minimal data and no repeated training.
      </p>
    </div>
  </div>

  <div class="paper-card">
    <!-- <div class="paper-thumb">
      <img src='images/papers/EverTracer-Framework.png' alt="EverTracer Framework">
    </div> -->
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2509.03058">EverTracer: Hunting Stolen Large Language Models via Stealthy and Robust Probabilistic Fingerprint</a><span class="paper-badges"><span class="paper-badge">EMNLP 2025 Main</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><a href="https://github.com/Xuzhenhua55/EverTracer" target="_blank" class="paper-badge-link">Code</a></span></h3>
      </div>
      <p class="paper-meta">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Meng Han, Wenpeng Xing
      </p>
      <p class="text-truncate" style="margin: 0; color: #24292e; line-height: 1.6; font-size: 14px;">
        We propose EverTracer, a gray-box probabilistic fingerprint that leverages calibrated probability shifts from MIA-style memorization to enable stealthy, robust provenance tracing against input and model-level modifications.
      </p>
    </div>
  </div>

  <div class="paper-card">
    <!-- <div class="paper-thumb">
      <img src='images/papers/CTCC-Framework.png' alt="CTCC Framework">
    </div> -->
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2509.09703">CTCC: A Robust and Stealthy Fingerprinting Framework for Large Language Models via Cross-Turn Contextual Correlation Backdoor</a><span class="paper-badges"><span class="paper-badge">EMNLP 2025 Main</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><a href="https://github.com/Xuzhenhua55/CTCC" target="_blank" class="paper-badge-link">Code</a></span></h3>
      </div>
      <p class="paper-meta">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Xixiang Zhao, Xubin Yue, shengwei tian, Changting Lin, Meng Han
      </p>
      <p class="text-truncate" style="margin: 0; color: #24292e; line-height: 1.6; font-size: 14px;">
        We propose CTCC, a rule-driven fingerprint that encodes cross-turn contextual correlations in dialogue to achieve black-box verification with higher stealth and robustness and reduced false positives.
      </p>
    </div>
  </div>
    
  <div class="paper-card">
    <div class="paper-thumb">
      <img src='images/papers/LoRA-FP-Framework.png' alt="LoRA-FP Framework">
    </div>
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2509.00820">Unlocking the Effectiveness of LoRA-FP for Seamless Transfer Implantation of Fingerprints in Downstream Models</a><span class="paper-badges"><span class="paper-badge">EMNLP 2025 Findings</span><span class="paper-badge" style="background:#28a745;">CCF-B</span><a href="https://github.com/Xuzhenhua55/LoRA-FP" target="_blank" class="paper-badge-link">Code</a></span></h3>
      </div>
      <p class="paper-meta">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Zhaokun Yan, Binhan Xu, Xin Tong, Haitao Xu, Yourong Chen, Meng Han
      </p>
      <p class="text-truncate" style="margin: 0; color: #24292e; line-height: 1.6; font-size: 14px;">
        We propose LoRA-FP, a plug-and-play approach that encodes backdoor fingerprints into LoRA adapters and transfers them to downstream models via parameter fusion, enabling low-cost, robust, and contamination-free fingerprinting.
      </p>
    </div>
  </div>


  <div class="paper-card">
    <!-- <div class="paper-thumb wide">
      <img src='images/papers/PREE-Framework.jpg' alt="PREE Framework">
    </div> -->
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2509.00918">        PREE: Towards Harmless and Adaptive Fingerprint Editing in Large Language Models via Knowledge Prefix Enhancement</a><span class="paper-badges"><span class="paper-badge">EMNLP 2025 Findings</span><span class="paper-badge" style="background:#28a745;">CCF-B</span></span></h3>
      </div>
      <p class="paper-meta">
        <strong style="color: #24292e;">Xubin Yue</strong> and <strong style="color: #24292e;">Zhenhua Xu</strong> (co-first authors), Wenpeng Xing, Jiahui Yu, Mohan Li, Meng Han
      </p>
      <p class="text-truncate" style="margin: 0; color: #24292e; line-height: 1.6; font-size: 14px;">
        We propose PREE, a prefix-enhanced fingerprint editing framework that embeds copyright information as minimal parameter offsets via dual-channel knowledge editing, delivering high trigger precision and strong robustness under incremental fine-tuning and defenses.
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
        <h3 class="paper-title"><a href="https://www.sciengine.com/SSI/doi/10.1360/SSI-2025-0022">InSty: A Robust Multi-Level Cross-Granularity Fingerprint Embedding Algorithm for Multi-Turn Dialogue in Large Language Models</a><span class="paper-badges"><span class="paper-badge">SCIENTIA SINICA Informationis</span><span class="paper-badge" style="background:#28a745;">SCI Q1/JCR Q1/CCF-A</span><span class="paper-badge" style="background:#6f42c1;">IF=7.6</span></span></h3>
      </div>
      <p class="paper-meta">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Meng Han, Xubin Yue, Wenpeng Xing 
      </p>
      <p class="text-truncate" style="margin: 0; color: #24292e; line-height: 1.6; font-size: 14px;">
        We propose InSty, a novel fingerprinting method for LLMs in multi-turn dialogues that embeds cross-granularity (word- and sentence-level) triggers across turns, enabling robust, stealthy, and high-recall IP protection under black-box settings.
      </p>
    </div>
  </div>
</div>

<div class="preprints-section" style="background: rgba(255, 255, 255, 0.1); backdrop-filter: blur(10px); border: 1px solid rgba(255, 255, 255, 0.2); border-radius: 16px; padding: 15px; margin: 25px 0; box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);">
  <h2 class="section-header">Key Preprints</h2>

  <div class="paper-card" style="margin-top: 12px;">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2508.11548">Copyright Protection for Large Language Models: A Survey of Methods, Challenges, and Trends</a><span class="paper-badges"><span class="paper-badge paper-badge--star">★ Star</span><a href="https://github.com/Xuzhenhua55/awesome-llm-copyright-protection" target="_blank" class="paper-badge-link">Code</a></span></h3>
      </div>
      <p class="paper-meta"><strong style="color: #24292e;">Zhenhua Xu</strong>, Xubin Yue, Zhebo Wang, Qichen Liu, Xixiang Zhao, et al.</p>
    </div>
  </div>

  <div class="paper-card">
    <div class="paper-body">
      <div class="paper-top">
        <h3 class="paper-title"><a href="https://arxiv.org/abs/2409.08846">Fingerprint Vector: Enabling Scalable and Efficient Model Fingerprint Transfer via Vector Addition</a><span class="paper-badges"><a href="https://github.com/Xuzhenhua55/Fingerprint-Vector" target="_blank" class="paper-badge-link">Code</a></span></h3>
      </div>
      <p class="paper-meta"><strong style="color: #24292e;">Zhenhua Xu</strong>, Qichen Liu, Zhebo Wang, Wenpeng Xing, Dezhang Kong, Mohan Li, Meng Han</p>
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

<!-- # 🎖 Honors and Awards -->


# 💻 Internships

<details class="internship">
  <summary><strong>Research Intern - AI Security</strong> | <em>July 2024 - Present</em> | <a href="http://ibj.zju.edu.cn/">Zhejiang University Binjiang Institute</a> & <a href="https://gentel.io/zh/home">Gentel Future Technology Co., Ltd.</a>, Hangzhou, Zhejiang, China</summary>
  <div style="margin-top:8px;">
    <p><strong>Primary Responsibilities:</strong> Conducting research on large language model security and AI ecosystem governance, focusing on model copyright protection (digital watermarking and model fingerprinting), jailbreak attacks and defenses, adversarial attack strategies, hallucination detection frameworks, and multi-agent system security.</p>
    <p><strong>Key Contributions:</strong></p>
    <ul>
      <li>Led 10+ high-quality research projects as first author and co-first author, with 10+ papers submitted to top-tier conferences and journals including ACL, EMNLP, AAAI, NDSS, and SCIENTIA SINICA</li>
      <li>Independently mentored multiple interns through complete research workflows, from topic selection and methodology design to experimental replication and paper writing</li>
      <li>Filed 8 invention patents (3 granted, 5 under review), achieving initial industrial transformation and intellectual property implementation of research outcomes</li>
    </ul>
  </div>
</details>

<details class="internship">
  <summary><strong>Java Backend Development Engineer</strong> | <em>November 2023 - May 2024</em> | <a href="https://www.lianlianpay.com/home">LianLianPay</a>, Hangzhou, Zhejiang, China</summary>
  <div style="margin-top:8px;">
    <p><strong>Primary Responsibilities:</strong> As a backend development engineer, participated in the development and maintenance of the "Account+" payment system. This system is one of the company's core business platforms, primarily responsible for managing merchant partnerships and associated user information, handling financial operations between the company and merchants including account recharge, internal fund transfers, withdrawals, and reconciliation processes.</p>
  </div>
</details>

# 📖 Educations

College of Software, Zhejiang University | *June 2024 - Present* | Master of Software Engineering | GPA: 4.27/5.0

Zhejiang University of Technology | *September 2020 - June 2024* | Bachelor of Digital Media Technology  | GPA: 3.84/5.0

<details class="bio">
  <summary>Selected Honors and Notes (click to expand)</summary>
  <div style="margin-top:6px; color:#374151; line-height:1.7;">
    <p><strong>Honors and Awards:</strong> Comprehensive Assessment: 100/100 (Ranked 1st in Major), Outstanding Graduate of Zhejiang Province, Outstanding Student Award</p>
    <p><strong>Scholarships:</strong> Zhejiang Provincial Government Scholarship (Top 5%), First-Class Scholarship for Outstanding Students (Top 2%), First-Class Academic Scholarship</p>
    <p><em>Note:</em> Digital Media Technology is a computer science major covering fundamental courses including Computer Networks, Data Structures, Operating Systems, and Computer Architecture. While the program later specializes in game design, human-computer interaction, and 3D animation programming, my academic focus shifted toward artificial intelligence and software development, leading to my current pursuit in software engineering.</p>
  </div>
</details>
