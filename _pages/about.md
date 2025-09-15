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
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
  overflow: hidden;
  text-overflow: ellipsis;
  cursor: pointer;
  transition: all 0.3s ease;
}

.text-truncate:hover {
  -webkit-line-clamp: unset;
  max-height: none;
  overflow: visible;
  background: rgba(255, 255, 255, 0.95);
  padding: 10px;
  border-radius: 8px;
  box-shadow: 0 4px 20px rgba(0,0,0,0.1);
  z-index: 100;
  position: relative;
}

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
  const paperImages = document.querySelectorAll('.paper-image img');
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

I am currently studying at the College of Software, Zhejiang University, under the supervision of [Meng Han](https://scholar.google.com/citations?user=TnCrl1cAAAAJ). 

My research focuses on AI Security, specifically Model Watermarking and Fingerprinting, involving LLM and VLM. 📚🔍 If you are interested in this topic, feel free to contact me via email! ✉️


<div style="background: linear-gradient(135deg, #f8fafc 0%, #f1f5f9 50%, #e2e8f0 100%); border: 1px solid rgba(148, 163, 184, 0.2); border-radius: 16px; padding: 24px; margin: 20px 0; position: relative; overflow: hidden; box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);">
  
  <!-- Section Header -->
  <div style="display: flex; align-items: center; margin-bottom: 20px; padding-bottom: 16px; border-bottom: 1px solid rgba(148, 163, 184, 0.15);">
    <div style="background: linear-gradient(135deg, #ef4444, #dc2626); width: 32px; height: 32px; border-radius: 50%; display: flex; align-items: center; justify-content: center; margin-right: 12px; box-shadow: 0 4px 12px rgba(239, 68, 68, 0.3); animation: pulse 3s ease-in-out infinite;">
      <span style="font-size: 18px;">🔥</span>
    </div>
    <h2 style="margin: 0; font-size: 24px; font-weight: 700; color: #1e293b; background: linear-gradient(135deg, #1e293b, #475569); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">News</h2>
    <div style="flex: 1; height: 2px; background: linear-gradient(90deg, rgba(59, 130, 246, 0.3), transparent); margin-left: 16px; border-radius: 1px;"></div>
  </div>
  
  <!-- Subtle tech grid background -->
  <div style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; opacity: 0.03; background-image: linear-gradient(rgba(59, 130, 246, 0.3) 1px, transparent 1px), linear-gradient(90deg, rgba(59, 130, 246, 0.3) 1px, transparent 1px); background-size: 24px 24px;"></div>
  
  <!-- Floating particles -->
  <div style="position: absolute; top: 20%; right: 10%; width: 4px; height: 4px; background: rgba(59, 130, 246, 0.4); border-radius: 50%; animation: float 6s ease-in-out infinite;"></div>
  <div style="position: absolute; top: 60%; right: 20%; width: 3px; height: 3px; background: rgba(16, 185, 129, 0.4); border-radius: 50%; animation: float 8s ease-in-out infinite reverse;"></div>
  <div style="position: absolute; top: 40%; right: 5%; width: 2px; height: 2px; background: rgba(245, 158, 11, 0.4); border-radius: 50%; animation: float 7s ease-in-out infinite;"></div>
  
  <style>
    @keyframes float {
      0%, 100% { transform: translateY(0px) rotate(0deg); opacity: 0.4; }
      50% { transform: translateY(-10px) rotate(180deg); opacity: 0.8; }
    }
    @keyframes slideInLeft {
      from { transform: translateX(-15px); opacity: 0; }
      to { transform: translateX(0); opacity: 1; }
    }
    @keyframes glow {
      0%, 100% { box-shadow: 0 0 5px rgba(59, 130, 246, 0.3); }
      50% { box-shadow: 0 0 15px rgba(59, 130, 246, 0.5); }
    }
    .news-item {
      animation: slideInLeft 0.6s ease-out forwards;
      transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    }
    .news-item:hover {
      transform: translateX(3px) scale(1.01);
      box-shadow: 0 8px 25px rgba(0, 0, 0, 0.12);
    }
    .news-badge {
      transition: all 0.3s ease;
      position: relative;
    }
    .news-badge::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      border-radius: inherit;
      opacity: 0;
      transition: opacity 0.3s ease;
    }
    .news-item:hover .news-badge {
      transform: scale(1.05);
    }
    .news-item:hover .news-badge::before {
      opacity: 1;
      animation: glow 2s ease-in-out infinite;
    }
  </style>
  
  <div class="news-item" style="background: rgba(255, 255, 255, 0.9); border: 1px solid rgba(203, 213, 225, 0.5); border-radius: 10px; padding: 12px 16px; margin-bottom: 8px; backdrop-filter: blur(8px); animation-delay: 0.1s; display: flex; align-items: center;">
    <span class="news-badge" style="background: linear-gradient(135deg, #3b82f6, #2563eb); color: white; padding: 4px 10px; border-radius: 16px; font-size: 10px; font-weight: 600; margin-right: 10px; box-shadow: 0 2px 6px rgba(59, 130, 246, 0.25); flex-shrink: 0;">2025.08</span>
    <div style="width: 5px; height: 5px; background: #3b82f6; border-radius: 50%; margin-right: 8px; animation: glow 3s ease-in-out infinite; flex-shrink: 0;"></div>
    <span style="font-size: 16px; margin-right: 8px; flex-shrink: 0;">🎉</span>
    <span style="color: #334155; font-size: 14px; font-weight: 500; flex: 1;">
      <strong>Four papers accepted by <a href="https://2025.emnlp.org/" style="color: #2563eb; text-decoration: none; font-weight: 600; border-bottom: 1px solid transparent; transition: all 0.3s ease;" onmouseover="this.style.borderColor='#2563eb'; this.style.color='#1d4ed8'" onmouseout="this.style.borderColor='transparent'; this.style.color='#2563eb'">EMNLP 2025</a></strong>
      <span style="background: linear-gradient(135deg, #10b981, #059669); color: white; padding: 2px 6px; border-radius: 10px; font-size: 9px; font-weight: 600; margin-left: 6px; box-shadow: 0 1px 3px rgba(16, 185, 129, 0.3);">2 Main</span>
      <span style="background: linear-gradient(135deg, #f59e0b, #d97706); color: white; padding: 2px 6px; border-radius: 10px; font-size: 9px; font-weight: 600; margin-left: 4px; box-shadow: 0 1px 3px rgba(245, 158, 11, 0.3);">2 Findings</span>
    </span>
  </div>

  <div class="news-item" style="background: rgba(255, 255, 255, 0.9); border: 1px solid rgba(203, 213, 225, 0.5); border-radius: 10px; padding: 12px 16px; margin-bottom: 8px; backdrop-filter: blur(8px); animation-delay: 0.2s; display: flex; align-items: center;">
    <span class="news-badge" style="background: linear-gradient(135deg, #10b981, #059669); color: white; padding: 4px 10px; border-radius: 16px; font-size: 10px; font-weight: 600; margin-right: 10px; box-shadow: 0 2px 6px rgba(16, 185, 129, 0.25); flex-shrink: 0;">2025.08</span>
    <div style="width: 5px; height: 5px; background: #10b981; border-radius: 50%; margin-right: 8px; animation: glow 3s ease-in-out infinite; flex-shrink: 0;"></div>
    <span style="font-size: 16px; margin-right: 8px; flex-shrink: 0;">🎉</span>
    <span style="color: #334155; font-size: 14px; font-weight: 500; flex: 1;">
      <strong>One paper accepted by <a href="http://scis.scichina.com/" style="color: #059669; text-decoration: none; font-weight: 600; border-bottom: 1px solid transparent; transition: all 0.3s ease;" onmouseover="this.style.borderColor='#059669'; this.style.color='#047857'" onmouseout="this.style.borderColor='transparent'; this.style.color='#059669'">SCIENTIA SINICA Informationis</a></strong>
    </span>
  </div>

  <div class="news-item" style="background: rgba(255, 255, 255, 0.9); border: 1px solid rgba(203, 213, 225, 0.5); border-radius: 10px; padding: 12px 16px; backdrop-filter: blur(8px); animation-delay: 0.3s; display: flex; align-items: center;">
    <span class="news-badge" style="background: linear-gradient(135deg, #f59e0b, #d97706); color: white; padding: 4px 10px; border-radius: 16px; font-size: 10px; font-weight: 600; margin-right: 10px; box-shadow: 0 2px 6px rgba(245, 158, 11, 0.25); flex-shrink: 0;">2025.05</span>
    <div style="width: 5px; height: 5px; background: #f59e0b; border-radius: 50%; margin-right: 8px; animation: glow 3s ease-in-out infinite; flex-shrink: 0;"></div>
    <span style="font-size: 16px; margin-right: 8px; flex-shrink: 0;">🎉</span>
    <span style="color: #334155; font-size: 14px; font-weight: 500; flex: 1;">
      <strong>One paper accepted by <a href="https://2025.aclweb.org/" style="color: #d97706; text-decoration: none; font-weight: 600; border-bottom: 1px solid transparent; transition: all 0.3s ease;" onmouseover="this.style.borderColor='#d97706'; this.style.color='#b45309'" onmouseout="this.style.borderColor='transparent'; this.style.color='#d97706'">ACL 2025 Main Conference</a></strong>
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
  
  <div class="paper-container" style="display: flex; flex-direction: row; margin: 20px 0; border: 1px solid #e1e4e8; border-radius: 12px; overflow: hidden; background: white; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
    <div class="paper-image" style="flex: 0 0 350px; position: relative; padding: 15px; min-width: 0;">
      <img src='images/papers/MEraser-Framework.png' alt="MEraser Framework" style="width: 100%; height: 100%; object-fit: contain; border-radius: 8px;">
    </div>
    <div class="paper-content" style="flex: 1; padding: 25px; min-width: 0;">
      <div class="paper-tags" style="float: right; margin-left: 15px; margin-bottom: 10px;">
        <div style="display: flex; gap: 8px; flex-wrap: wrap;">
          <span style="background: #0366d6; color: white; padding: 4px 12px; border-radius: 20px; font-size: 11px; font-weight: 600; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">ACL 2025 Main</span>
          <span style="background: #28a745; color: white; padding: 4px 12px; border-radius: 20px; font-size: 11px; font-weight: 600; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">CCF-A</span>
        </div>
      </div>
      <h3 style="margin: 0 0 15px 0; font-size: 16px; line-height: 1.3; color: #24292e;">
        <a href="https://aclanthology.org/2025.acl-long.1455/" style="color: #0366d6; text-decoration: none; transition: color 0.2s;">MEraser: An Effective Fingerprint Erasure Approach for Large Language Models</a>
      </h3>
      <p style="margin: 0 0 15px 0; color: #586069; font-size: 15px; font-weight: 500;">
        <strong style="color: #24292e;">Jingxuan Zhang</strong> and <strong style="color: #24292e;">Zhenhua Xu</strong> (co-first authors), Rui Hu, Wenpeng Xing, Xuhong Zhang, Meng Han  <a href="https://github.com/fatdove77/MEraser" target="_blank" class="github-btn" style="display:inline-block;padding:2px 10px;border:1px solid #333;border-radius:5px;color:#333;text-decoration:none;"><i class="fab fa-github"></i> Code</a>
      </p>
      <p class="text-truncate" style="margin: 0; color: #24292e; line-height: 1.6; font-size: 14px;">
        LLMs are widely used, raising concerns about model ownership. MEraser is a method to remove backdoor-based fingerprints from LLMs while preserving performance. It uses a two-phase fine-tuning strategy with mismatched and clean datasets, achieving fingerprint removal with minimal data. The method is transferable across models without repeated training, highlighting vulnerabilities in current techniques and setting benchmarks for better model protection.
      </p>
    </div>
  </div>

  <div class="paper-container" style="display: flex; flex-direction: row; margin: 20px 0; border: 1px solid #e1e4e8; border-radius: 12px; overflow: hidden; background: white; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
    <div class="paper-image" style="flex: 0 0 350px; position: relative; padding: 15px; min-width: 0;">
      <img src='images/papers/EverTracer-Framework.png' alt="EverTracer Framework" style="width: 100%; height: 100%; object-fit: contain; border-radius: 8px;">
    </div>
    <div class="paper-content" style="flex: 1; padding: 25px; min-width: 0;">
      <div class="paper-tags" style="float: right; margin-left: 15px; margin-bottom: 10px;">
        <div style="display: flex; gap: 8px; flex-wrap: wrap;">
          <span style="background: #0366d6; color: white; padding: 4px 12px; border-radius: 20px; font-size: 11px; font-weight: 600; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">EMNLP 2025 Main</span>
          <span style="background: #28a745; color: white; padding: 4px 12px; border-radius: 20px; font-size: 11px; font-weight: 600; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">CCF-B</span>
        </div>
      </div>
      <h3 style="margin: 0 0 15px 0; font-size: 16px; line-height: 1.3; color: #24292e;">
        <a href="https://arxiv.org/abs/2509.03058" style="color: #0366d6; text-decoration: none; transition: color 0.2s;">EverTracer: Hunting Stolen Large Language Models via Stealthy and Robust Probabilistic Fingerprint</a>
      </h3>
      <p style="margin: 0 0 15px 0; color: #586069; font-size: 15px; font-weight: 500;">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Meng Han, Wenpeng Xing
        <a href="https://github.com/Xuzhenhua55/EverTracer" target="_blank" class="github-btn" style="display:inline-block;padding:2px 10px;border:1px solid #333;border-radius:5px;color:#333;text-decoration:none;"><i class="fab fa-github"></i> Code</a>
      </p>
      <p class="text-truncate" style="margin: 0; color: #24292e; line-height: 1.6; font-size: 14px;">
        The proliferation of large language models (LLMs) has intensified concerns over model theft and license violations, necessitating robust and stealthy ownership verification. Existing fingerprinting methods either require impractical white-box access or introduce detectable statistical anomalies. We propose EverTracer, a novel gray-box fingerprinting framework that ensures stealthy and robust model provenance tracing. EverTracer is the first to repurpose Membership Inference Attacks (MIAs) for defensive use, embedding ownership signals via memorization instead of artificial trigger-output overfitting. It consists of Fingerprint Injection, which fine-tunes the model on any natural language data without detectable artifacts, and Verification, which leverages calibrated probability variation signal to distinguish fingerprinted models. This approach remains robust against adaptive adversaries, including input level modification, and model-level modifications. Extensive experiments across architectures demonstrate EverTracer’s state-of-the-art effectiveness, stealthness, and resilience, establishing it as a practical solution for securing LLM intellectual property.
      </p>
    </div>
  </div>

  <div class="paper-container" style="display: flex; flex-direction: row; margin: 20px 0; border: 1px solid #e1e4e8; border-radius: 12px; overflow: hidden; background: white; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
    <div class="paper-image" style="flex: 0 0 350px; position: relative; padding: 15px; min-width: 0;">
      <img src='images/papers/CTCC-Framework.png' alt="CTCC Framework" style="width: 100%; height: 100%; object-fit: contain; border-radius: 8px;">
    </div>
    <div class="paper-content" style="flex: 1; padding: 25px; min-width: 0;">
      <div class="paper-tags" style="float: right; margin-left: 15px; margin-bottom: 10px;">
        <div style="display: flex; gap: 8px; flex-wrap: wrap;">
          <span style="background: #0366d6; color: white; padding: 4px 12px; border-radius: 20px; font-size: 11px; font-weight: 600; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">EMNLP 2025 Main</span>
          <span style="background: #28a745; color: white; padding: 4px 12px; border-radius: 20px; font-size: 11px; font-weight: 600; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">CCF-B</span>
        </div>
      </div>
      <h3 style="margin: 0 0 15px 0; font-size: 16px; line-height: 1.3; color: #24292e;">
        <a href="https://arxiv.org/abs/2509.09703" style="color: #0366d6; text-decoration: none; transition: color 0.2s;">CTCC: A Robust and Stealthy Fingerprinting Framework for Large Language Models via Cross-Turn Contextual Correlation Backdoor</a>
      </h3>
      <p style="margin: 0 0 15px 0; color: #586069; font-size: 15px; font-weight: 500;">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Xixiang Zhao, Xubin Yue, shengwei tian, Changting Lin, Meng Han
        <a href="https://github.com/Xuzhenhua55/CTCC" target="_blank" class="github-btn" style="display:inline-block;padding:2px 10px;border:1px solid #333;border-radius:5px;color:#333;text-decoration:none;"><i class="fab fa-github"></i> Code</a>
      </p>
      <p class="text-truncate" style="margin: 0; color: #24292e; line-height: 1.6; font-size: 14px;">
        The widespread deployment of large language models (LLMs) has intensified concerns around intellectual property (IP) protection, as model theft and unauthorized redistribution become increasingly feasible. To address this, model fingerprinting aims to embed verifiable ownership traces into LLMs. However, existing methods face inherent trade-offs between stealthness, robustness, and generalizability—being either detectable via distributional shifts, vulnerable to adversarial modifications, or easily invalidated once the fingerprint is revealed. In this work, we introduce CTCC, a novel rule-driven fingerprinting framework that encodes contextual correlations across multiple dialogue turns—such as counterfactual—rather than relying on token-level or single-turn triggers. CTCC enables fingerprint verification under black-box access while mitigating false positives and fingerprint leakage, supporting continuous construction under a shared semantic rule even if partial triggers are exposed. Extensive experiments across multiple LLM architectures demonstrate that CTCC consistently achieves stronger stealth and robustness than prior work. Our findings position CTCC as a reliable and practical solution for ownership verification in real-world LLM deployment scenarios.
      </p>
    </div>
  </div>
    
  <div class="paper-container" style="display: flex; flex-direction: row; margin: 20px 0; border: 1px solid #e1e4e8; border-radius: 12px; overflow: hidden; background: white; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
    <div class="paper-image" style="flex: 0 0 350px; position: relative; padding: 15px; min-width: 0;">
      <img src='images/papers/LoRA-FP-Framework.png' alt="LoRA-FP Framework" style="width: 100%; height: 100%; object-fit: contain; border-radius: 8px;">
    </div>
    <div class="paper-content" style="flex: 1; padding: 25px; min-width: 0;">
      <div class="paper-tags" style="float: right; margin-left: 15px; margin-bottom: 10px;">
        <div style="display: flex; gap: 8px; flex-wrap: wrap;">
          <span style="background: #0366d6; color: white; padding: 4px 12px; border-radius: 20px; font-size: 11px; font-weight: 600; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">EMNLP 2025 Findings</span>
          <span style="background: #28a745; color: white; padding: 4px 12px; border-radius: 20px; font-size: 11px; font-weight: 600; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">CCF-B</span>
        </div>
      </div>
      <h3 style="margin: 0 0 15px 0; font-size: 16px; line-height: 1.3; color: #24292e;">
        <a href="https://arxiv.org/abs/2509.00820" style="color: #0366d6; text-decoration: none; transition: color 0.2s;">Unlocking the Effectiveness of LoRA-FP for Seamless Transfer Implantation of Fingerprints in Downstream Models</a>
      </h3>
      <p style="margin: 0 0 15px 0; color: #586069; font-size: 15px; font-weight: 500;">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Zhaokun Yan, Binhan Xu, Xin Tong, Haitao Xu, Yourong Chen, Meng Han
        <a href="https://github.com/Xuzhenhua55/LoRA-FP" target="_blank" class="github-btn" style="display:inline-block;padding:2px 10px;border:1px solid #333;border-radius:5px;color:#333;text-decoration:none;"><i class="fab fa-github"></i> Code</a>
      </p>
      <p class="text-truncate" style="margin: 0; color: #24292e; line-height: 1.6; font-size: 14px;">
                 With the rapid development of large language models (LLMs), protecting intellectual property (IP) has become increasingly crucial. To tackle high costs and potential contamination in fingerprint integration, we propose LoRA-FP, a lightweight plug-and-play framework that encodes backdoor fingerprints into LoRA adapters via constrained fine-tuning. This enables seamless fingerprint transplantation through parameter fusion, eliminating full-parameter updates while maintaining integrity. Experiments demonstrate that LoRA-FP achieves superior robustness against various scenarios like incremental training and model fusion, while significantly reducing computational overhead compared to traditional approaches.
      </p>
    </div>
  </div>


  <div class="paper-container" style="display: flex; flex-direction: row; margin: 20px 0; border: 1px solid #e1e4e8; border-radius: 12px; overflow: hidden; background: white; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
    <div class="paper-image" style="flex: 0 0 350px; position: relative; padding: 15px; min-width: 0;">
      <img src='images/papers/PREE-Framework.jpg' alt="PREE Framework" style="width: 100%; height: 100%; object-fit: contain; border-radius: 8px;">
    </div>
    <div class="paper-content" style="flex: 1; padding: 25px; min-width: 0;">
      <div class="paper-tags" style="float: right; margin-left: 15px; margin-bottom: 10px;">
        <div style="display: flex; gap: 8px; flex-wrap: wrap;">
          <span style="background: #0366d6; color: white; padding: 4px 12px; border-radius: 20px; font-size: 11px; font-weight: 600; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">EMNLP 2025 Findings</span>
          <span style="background: #28a745; color: white; padding: 4px 12px; border-radius: 20px; font-size: 11px; font-weight: 600; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">CCF-B</span>
        </div>
      </div>
      <h3 style="margin: 0 0 15px 0; font-size: 16px; line-height: 1.3; color: #24292e;">
        <a href="https://arxiv.org/abs/2509.00918" style="color: #0366d6; text-decoration: none; transition: color 0.2s;">        PREE: Towards Harmless and Adaptive Fingerprint Editing in Large Language Models via Knowledge Prefix Enhancement</a>
      </h3>
      <p style="margin: 0 0 15px 0; color: #586069; font-size: 15px; font-weight: 500;">
        <strong style="color: #24292e;">Xubin Yue</strong> and <strong style="color: #24292e;">Zhenhua Xu</strong> (co-first authors), Wenpeng Xing, Jiahui Yu, Mohan Li, Meng Han
        <!-- <a href="https://github.com/fatdove77/MEraser" target="_blank" class="github-btn" style="display:inline-block;padding:2px 10px;border:1px solid #333;border-radius:5px;color:#333;text-decoration:none;"><i class="fab fa-github"></i> Code</a> -->
      </p>
      <p class="text-truncate" style="margin: 0; color: #24292e; line-height: 1.6; font-size: 14px;">
                 Addressing the intellectual property protection challenges in commercial deployment of large language models (LLMs), existing black-box fingerprinting techniques face dual challenges from incremental fine-tuning erasure and feature-space defense due to their reliance on overfitting high-perplexity trigger patterns. We first reveal that model editing in the fingerprint domain exhibits unique advantages including significantly lower false positive rates, enhanced harmlessness, and superior robustness. Building on this foundation, this paper innovatively proposes a Prefix-enhanced Fingerprint Editing Framework (PREE), which encodes copyright information into parameter offsets through dual-channel knowledge editing to achieve covert embedding of fingerprint features. Experimental results demonstrate that the proposed solution achieves 90% trigger precision in mainstream architectures including LLaMA-3 and Qwen-2.5. The minimal parameter offset (change rate < 0.03%) effectively preserves original knowledge representation while demonstrating strong robustness against incremental fine-tuning and multi-dimensional defense strategies, maintaining zero false positive rate throughout evaluations.
      </p>
    </div>
  </div>

</div>

<div style="background: rgba(255, 255, 255, 0.1); backdrop-filter: blur(10px); border: 1px solid rgba(255, 255, 255, 0.2); border-radius: 16px; padding: 15px; margin: 25px 0; box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);">
  <h2 class="section-header">Journal Papers</h2>
  
  <div class="paper-container" style="display: flex; flex-direction: row; margin: 20px 0; border: 1px solid #e1e4e8; border-radius: 12px; overflow: hidden; background: white; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
    <div class="paper-image" style="flex: 0 0 350px; position: relative; padding: 15px; min-width: 0;">
      <img src='images/papers/InSty-Framework.jpg' alt="InSty Framework" style="width: 100%; height: 100%; object-fit: contain; border-radius: 8px;">
    </div>
    <div class="paper-content" style="flex: 1; padding: 25px; min-width: 0;">
      <div class="paper-tags" style="float: right; margin-left: 15px; margin-bottom: 10px;">
        <div style="display: flex; gap: 8px; flex-wrap: wrap;">
          <span style="background: #0366d6; color: white; padding: 4px 12px; border-radius: 20px; font-size: 11px; font-weight: 600; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">SCIENTIA SINICA Informationis</span>
          <span style="background: #28a745; color: white; padding: 4px 12px; border-radius: 20px; font-size: 11px; font-weight: 600; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">SCI Q1/JCR Q1/CCF-A</span>
          <span style="background: #6f42c1; color: white; padding: 4px 12px; border-radius: 20px; font-size: 11px; font-weight: 600; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">IF=7.6</span>
        </div>
      </div>
      <h3 style="margin: 0 0 15px 0; font-size: 16px; line-height: 1.3; color: #24292e;">
        <a href="https://www.sciengine.com/SSI/doi/10.1360/SSI-2025-0022" style="color: #0366d6; text-decoration: none; transition: color 0.2s;">InSty: A Robust Multi-Level Cross-Granularity Fingerprint Embedding Algorithm for Multi-Turn Dialogue in Large Language Models</a>
      </h3>
      <p style="margin: 0 0 15px 0; color: #586069; font-size: 15px; font-weight: 500;">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Meng Han, Xubin Yue, Wenpeng Xing 
      </p>
      <p class="text-truncate" style="margin: 0; color: #24292e; line-height: 1.6; font-size: 14px;">
        We propose InSty, a novel fingerprinting method for LLMs in multi-turn dialogues that embeds cross-granularity (word- and sentence-level) triggers across turns, enabling robust, stealthy, and high-recall IP protection under black-box settings.
      </p>
    </div>
  </div>
</div>

<div style="background: rgba(255, 255, 255, 0.1); backdrop-filter: blur(10px); border: 1px solid rgba(255, 255, 255, 0.2); border-radius: 16px; padding: 15px; margin: 25px 0; box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);">
  <!-- <h2 style="margin: 0 0 15px 0; color: #24292e; font-size: 20px; font-weight: 600;">Preprints</h2> -->
  
  <h3 style="margin: 20px 0 15px 0; color: #24292e; font-size: 16px; font-weight: 600;">Key Preprints</h3>
  <ul class="star-list" style="margin: 0; padding-left: 20px; color: #24292e;">
    <li style="margin-bottom: 12px; line-height: 1.5;"><a href="https://arxiv.org/abs/2508.11548">Copyright Protection for Large Language Models: A Survey of Methods, Challenges, and Trends</a>, <strong>Zhenhua Xu</strong>, Xubin Yue, Zhebo Wang et al. <a href="https://github.com/Xuzhenhua55/awesome-llm-copyright-protection" target="_blank" class="github-btn" style="display:inline-block;padding:2px 10px;border:1px solid #333;border-radius:5px;color:#333;text-decoration:none;"><i class="fab fa-github"></i> Github</a></li>
  </ul>
  
  <!-- <h3 style="margin: 20px 0 15px 0; color: #24292e; font-size: 16px; font-weight: 600;">Other Preprints</h3> -->
  <ul class="square-list" style="margin: 0; padding-left: 20px; color: #24292e;">
    <li style="margin-bottom: 12px; line-height: 1.5;"><a href="https://arxiv.org/abs/2409.08846">FP-VEC: Fingerprinting Large Language Models via Efficient Vector Addition</a>, <strong>Zhenhua Xu</strong>, Wenpeng Xing, Zhebo Wang, Chang Hu, Chen Jie, Meng Han</li>
    <li style="margin-bottom: 12px; line-height: 1.5;"><a href="https://arxiv.org/abs/2505.06304">RAP-SM: Robust Adversarial Prompt via Shadow Models for Copyright Verification of Large Language Models</a>, <strong>Zhebo Wang</strong> and <strong>Zhenhua Xu</strong> (co-first authors), Maike Li, Wenpeng Xing, Chunqiang Hu, Chen Zhi, Meng Han</li>
    <li style="margin-bottom: 12px; line-height: 1.5;"><a href="https://arxiv.org/abs/2506.19676">A Survey of LLM-Driven AI Agent Communication: Protocols, Security Risks, and Defense Countermeasures</a>, Dezhang Kong, Shi Lin, <strong>Zhenhua Xu</strong>, Zhebo Wang, Minghao Li, Yufeng Li, Yilun Zhang, Zeyang Sha, Yuyuan Li, Changting Lin, Xun Wang, Xuan Liu, Muhammad Khurram Khan, Ningyu Zhang, Chaochao Chen, Meng Han</li>
  </ul>
</div>

<!-- # 🎖 Honors and Awards -->


# 💻 Internships

**Research Intern - AI Security** | *July 2024 - Present* | [Zhejiang University Binjiang Institute](http://ibj.zju.edu.cn/) and [Gentel Future Technology Co., Ltd.](https://gentel.io/zh/home), Hangzhou, Zhejiang, China

**Primary Responsibilities:** Conducting research on large language model security and AI ecosystem governance, focusing on model copyright protection (digital watermarking and model fingerprinting), jailbreak attacks and defenses, adversarial attack strategies, hallucination detection frameworks, and multi-agent system security.

**Key Contributions:**
- Led 10+ high-quality research projects as first author and co-first author, with 10+ papers submitted to top-tier conferences and journals including ACL, EMNLP, AAAI, NDSS, and SCIENTIA SINICA
- Independently mentored multiple interns through complete research workflows, from topic selection and methodology design to experimental replication and paper writing
- Filed 8 invention patents (3 granted, 5 under review), achieving initial industrial transformation and intellectual property implementation of research outcomes

---

**Java Backend Development Engineer** | *November 2023 - May 2024* | [LianLianPay](https://www.lianlianpay.com/home), Hangzhou, Zhejiang, China

**Primary Responsibilities:** As a backend development engineer, participated in the development and maintenance of the "Account+" payment system. This system is one of the company's core business platforms, primarily responsible for managing merchant partnerships and associated user information, handling financial operations between the company and merchants including account recharge, internal fund transfers, withdrawals, and reconciliation processes.

# 📖 Educations

College of Software, Zhejiang University | *June 2024 - Present* | Master of Software Engineering | GPA: 4.27/5.0

Zhejiang University of Technology | *September 2020 - June 2024* | Bachelor of Digital Media Technology  | GPA: 3.84/5.0

**Honors and Awards:** Comprehensive Assessment: 100/100 (Ranked 1st in Major), Outstanding Graduate of Zhejiang Province, Outstanding Student Award

**Scholarships:** Zhejiang Provincial Government Scholarship (Top 5%), First-Class Scholarship for Outstanding Students (Top 2%), First-Class Academic Scholarship

*Note: Digital Media Technology is a computer science major covering fundamental courses including Computer Networks, Data Structures, Operating Systems, and Computer Architecture. While the program later specializes in game design, human-computer interaction, and 3D animation programming, my academic focus shifted toward artificial intelligence and software development, leading to my current pursuit in software engineering.*
