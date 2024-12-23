#' 按纽生成生成器界面
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
#' customerDueDaysUI()
customerDueDaysUI <- function(tabTitle ='客户账期规则表',
                              colTitles =c('数据模块','操作区域','显示区域'),
                              widthRates =c(6,6,12),
                              func_left = customerDueDaysUI_left,
                              func_right =customerDueDaysUI_right,
                              func_bottom = customerDueDaysUI_bottom
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
#' customerDueDaysUI_left()
customerDueDaysUI_left <- function() {


  res <- tagList(
    tsui::uiTemplate(templateName = '客户账期规则表'),
    tsui::mdl_file(id = 'btn_customerDueDays', label = '上传客户账期数据'),
    shiny::actionButton(inputId = 'btn_customerDueDays_upload' , label = '上传数据'),


  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' customerDueDaysUI_bottom()
customerDueDaysUI_right <- function() {
  res <- tagList(

    shiny::actionButton(inputId = 'btn_customerDueDays_view' , label = '查看客户账期'),
    tsui::mdl_text2(id = 'text_customerDueDays_FCustomerNumber',label ='客户代码' ,value ='' ),
    shiny::actionButton(inputId = 'btn_customerDueDays_delete' , label = '按客户代码删除客户'),
  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' customerDueDaysUI_bottom()
customerDueDaysUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'dt_resultView_customerDueDays', label = ''))


  )
  return(res)

}
