# coding: utf-8
# s1 = Section.create(name: "民事类法律事务", summary: "与民事方面相关的法律", sort: 1)
# s2 = Section.create(name: "经济类法律事务", summary: "与经济方面相关的法律", sort: 2)
# s3 = Section.create(name: "刑事行政类法律事务", summary: "与刑事行政方面相关的法律", sort: 3)
# s4 = Section.create(name: "涉外类法律事务", summary: "与涉外方面相关的法律", sort: 4)
# s5 = Section.create(name: "公司专项类法律事务", summary: "与公司专项方面相关的法律", sort: 5)
# s6 = Section.create(name: "其他非诉讼类法律事务", summary: "与其他非诉讼方面相关的法律", sort: 6)

# Node.create!(name: "合同纠纷", summary: "与合同方面的法律", sort: 1, section_id: 1)
# Node.create!(name: "医疗纠纷", summary: "与医疗纠纷方面的法律", sort: 2, section_id: 1)
# Node.create!(name: "交通事故", summary: "与交通事故方面的法律", sort: 3, section_id: 1)
# 
# Node.create(name: "房产纠纷", summary: "与房产纠纷方面的法律", sort: 1, section_id: 2)
# Node.create(name: "个人独资", summary: "与个人独资方面的法律", sort: 2, section_id: 2)
# Node.create(name: "广告宣传", summary: "与广告宣传方面的法律", sort: 3, section_id: 2)
# 
# Node.create(name: "行政诉讼", summary: "与行政诉讼的法律", sort: 1, section_id: 3)
# Node.create(name: "工商税务", summary: "与工商税务方面的法律", sort: 2, section_id: 3)
# Node.create(name: "国家赔偿", summary: "与国家赔偿方面的法律", sort: 3, section_id: 3)
# 
# Node.create(name: "海事海商", summary: "与海事海商方面的法律", sort: 1, section_id: 4)
# Node.create(name: "合资合作", summary: "与合资合作方面的法律", sort: 2, section_id: 4)
# Node.create(name: "国际贸易", summary: "与国际贸易方面的法律", sort: 3, section_id: 4)
# 
# Node.create(name: "公司收购", summary: "与公司收购方面的法律", sort: 1, section_id: 5)
# Node.create(name: "股份转让", summary: "与股份转让方面的法律", sort: 2, section_id: 5)
# Node.create(name: "资产拍卖", summary: "与资产拍卖方面的法律", sort: 3, section_id: 5)
# 
# Node.create(name: "工商查询", summary: "与工商查询方面的法律", sort: 1, section_id: 6)
# Node.create(name: "私人律师", summary: "与私人律师方面的法律", sort: 2, section_id: 6)
# Node.create(name: "常年顾问", summary: "与常年顾问方面的法律", sort: 3, section_id: 6)

# 首页
# SiteConfig.index_html
SiteConfig.create(:key => "index_html", :value => <<-eos
<div class="well" style="text-align:center;">
  <p><img alt="Big_logo" src="assets/big_logo.png" /></p>
  <p></p>
  <p>Law Wenda Communite，致力于为用户搭建一个法律资讯的平台。</p>
</div>
eos
)


# Footer HTML
SiteConfig.create(:key => "footer_html", :value => <<-eos 
<p class="copyright">
  &copy; Law Wenda Group.
</p>
eos
)