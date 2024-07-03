#' 黑名单界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' blackBillUI()
blackBillUI <- function(tabTitle ='UnBilledAr黑名单',
                   colTitles =c('操作区域','操作区域','显示区域'),
                   widthRates =c(6,6,12),
                   func_left = blackBillUI_left,
                   func_right =blackBillUI_right,
                   func_bottom = blackBillUI_bottom
) {

  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)

}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' blackBillUI_left()
blackBillUI_left <- function() {


  res <- tagList(
    tsui::uiTemplate(templateName = 'UnBilledAr黑名单'),
    tsui::mdl_file(id = 'btn_blackBill', label = '上传UnBilledAr黑名单'),
    tsui::mdl_text2(id = 'text_blackBill_FProjectNumber',label ='项目号' ,value ='' ),
  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' blackBillUI_bottom()
blackBillUI_right <- function() {
  res <- tagList(
    shiny::actionButton(inputId = 'btn_blackBill_upload' , label = '上传数据'),
    shiny::actionButton(inputId = 'btn_blackBill_view' , label = '查看UnBilledAr黑名单'),
    shiny::actionButton(inputId = 'btn_blackBill_delete' , label = '删除UnBilledAr黑名单'),
  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' blackBillUI_bottom()
blackBillUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'dt_resultView_blackBill', label = ''))


  )
  return(res)

}
