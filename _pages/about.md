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
</style>

{% if site.google_scholar_stats_use_cdn %}
{% assign gsDataBaseUrl = "https://cdn.jsdelivr.net/gh/" | append: site.repository | append: "@" %}
{% else %}
{% assign gsDataBaseUrl = "https://raw.githubusercontent.com/" | append: site.repository | append: "/" %}
{% endif %}
{% assign url = gsDataBaseUrl | append: "google-scholar-stats/gs_data_shieldsio.json" %}

<span class='anchor' id='about-me'></span>

I am currently studying at the College of Software, Zhejiang University, under the supervision of [Meng Han](https://scholar.google.com/citations?user=TnCrl1cAAAAJ). 

My research focuses on AI Security, specifically Model Watermarking and Fingerprinting, involving LLM and VLM. 📚🔍 If you are interested in this topic, feel free to contact me via email! ✉️


# 🔥 News
- *2025.08*: &nbsp;🎉🎉 One paper was accepted by [SCIENTIA SINICA Informationis](http://scis.scichina.com/).
- *2025.05*: &nbsp;🎉🎉 One paper was accepted by [ACL 2025 Main Conference](https://2025.aclweb.org/).

# 🚀 Projects
- [Awesome LLM Copyright Protection](https://github.com/Xuzhenhua55/awesome-llm-copyright-protection) - A curated collection of research and techniques for protecting intellectual property of large language models, including watermarking, fingerprinting, and more. [[Website]](https://xuzhenhua55.github.io/awesome-llm-copyright-protection/)

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
  <h2 style="margin: 0 0 15px 0; color: #24292e; font-size: 20px; font-weight: 600;">Conference Papers</h2>
  
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
        <a href="https://arxiv.org/abs/2506.12551" style="color: #0366d6; text-decoration: none; transition: color 0.2s;">MEraser: An Effective Fingerprint Erasure Approach for Large Language Models</a>
      </h3>
      <p style="margin: 0 0 15px 0; color: #586069; font-size: 15px; font-weight: 500;">
        <strong style="color: #24292e;">Jingxuan Zhang</strong> and <strong style="color: #24292e;">Zhenhua Xu</strong> (co-first authors), Rui Hu, Wenpeng Xing, Xuhong Zhang, Meng Han  <a href="https://github.com/fatdove77/MEraser" target="_blank" class="github-btn" style="display:inline-block;padding:2px 10px;border:1px solid #333;border-radius:5px;color:#333;text-decoration:none;"><i class="fab fa-github"></i> Code</a>
      </p>
      <p style="margin: 0; color: #24292e; line-height: 1.6; font-size: 14px;">
        LLMs are widely used, raising concerns about model ownership. MEraser is a method to remove backdoor-based fingerprints from LLMs while preserving performance. It uses a two-phase fine-tuning strategy with mismatched and clean datasets, achieving fingerprint removal with minimal data. The method is transferable across models without repeated training, highlighting vulnerabilities in current techniques and setting benchmarks for better model protection.
      </p>
    </div>
  </div>
</div>

<div style="background: rgba(255, 255, 255, 0.1); backdrop-filter: blur(10px); border: 1px solid rgba(255, 255, 255, 0.2); border-radius: 16px; padding: 15px; margin: 25px 0; box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);">
  <h2 style="margin: 0 0 15px 0; color: #24292e; font-size: 20px; font-weight: 600;">Journal Papers</h2>
  
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
        <a href="https://doi.org/10.1360/SSI-2025-0022" style="color: #0366d6; text-decoration: none; transition: color 0.2s;">InSty: A Robust Multi-Level Cross-Granularity Fingerprint Embedding Algorithm for Multi-Turn Dialogue in Large Language Models</a>
      </h3>
      <p style="margin: 0 0 15px 0; color: #586069; font-size: 15px; font-weight: 500;">
        <strong style="color: #24292e;">Zhenhua Xu</strong>, Xubin Yue, Meng Han
      </p>
      <p style="margin: 0; color: #24292e; line-height: 1.6; font-size: 14px;">
        We propose InSty, a novel fingerprinting method for LLMs in multi-turn dialogues that embeds cross-granularity (word- and sentence-level) triggers across turns, enabling robust, stealthy, and high-recall IP protection under black-box settings.
      </p>
    </div>
  </div>
</div>

<div style="background: rgba(255, 255, 255, 0.1); backdrop-filter: blur(10px); border: 1px solid rgba(255, 255, 255, 0.2); border-radius: 16px; padding: 15px; margin: 25px 0; box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);">
  <h2 style="margin: 0 0 15px 0; color: #24292e; font-size: 20px; font-weight: 600;">Preprints</h2>
  
  <ul style="margin: 0; padding-left: 20px; color: #24292e;">
    <li style="margin-bottom: 12px; line-height: 1.5;"><a href="https://arxiv.org/abs/2505.06304">RAP-SM: Robust Adversarial Prompt via Shadow Models for Copyright Verification of Large Language Models</a>, <strong>Zhebo Wang</strong> and <strong>Zhenhua Xu</strong> (co-first authors), Maike Li, Wenpeng Xing, Chunqiang Hu, Chen Zhi, Meng Han</li>
    <li style="margin-bottom: 12px; line-height: 1.5;"><a href="https://arxiv.org/abs/2409.08846">FP-VEC: Fingerprinting Large Language Models via Efficient Vector Addition</a>, <strong>Zhenhua Xu</strong>, Wenpeng Xing, Zhebo Wang, Chang Hu, Chen Jie, Meng Han</li>
    <li style="margin-bottom: 12px; line-height: 1.5;"><a href="https://arxiv.org/abs/2506.19676">A Survey of LLM-Driven AI Agent Communication: Protocols, Security Risks, and Defense Countermeasures</a>, Dezhang Kong, Shi Lin, <strong>Zhenhua Xu</strong>, Zhebo Wang, Minghao Li, Yufeng Li, Yilun Zhang, Zeyang Sha, Yuyuan Li, Changting Lin, Xun Wang, Xuan Liu, Muhammad Khurram Khan, Ningyu Zhang, Chaochao Chen, Meng Han</li>
  </ul>
</div>

# 🎖 Honors and Awards
During Undergraduate Studies:
- Outstanding Graduate of Zhejiang Province
- Zhejiang Provincial Government Scholarship, First-Class Scholarship for Outstanding Students, First-Class Academic Scholarship

# 💻 Internships
- *2023.11 - 2024.5*, [LianLianPay (LianLian Yintong Electronic Payment Co., Ltd.)](https://www.lianlianpay.com/home), China.

# 📖 Educations
- *2024.06 - Present*, Master's student in Software Engineering, College of Software, Zhejiang University
- *2020.09 - 2024.06*, Bachelor's degree in Digital Media Technology, College of Computer Science and Technology, College of Software, Zhejiang University of Technology

