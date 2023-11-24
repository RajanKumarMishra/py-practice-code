import os
from datetime import datetime,timedelta
import openpyxl

def get_folder_info(folder_path,threshold_date):

    folder_data = []

    for root,dirs,files in os.walk(folder_path):
        for name in dirs+files:
            full_path = os.path.join(root,name)
            creation_time = datetime.fromtimestamp(os.path.getctime(full_path))

            if creation_time<threshold_date:
                size = os.path.getsize(full_path) if os.path.isfile(full_path) else None
                folder_data.append({
                    'Name':name,
                    'Creation Date':creation_time,
                    'Size':size
                })

    return folder_data

def wrire_to_excel(data,excel_file):
    wb = openpyxl.Workbook()
    ws = wb.active

    headers = ['Name', 'Creation Date','Size']
    for row_num, item in enumerate(data,2):
        for col_num,key in enumerate(headers,1):
            ws.cell(row=row_num,column= col_num,value = item.get(key,''))

    wb.save(excel_file)

if __name__ == "__main__":
    folder_path = 'C:\\Users\\LENOVO.T470s\\OneDrive\\Documents'
    threshold_date = datetime.now()-timedelta(days=3)
    excel_file = 'folder_data_test_3.xlsx'

    folder_data = get_folder_info(folder_path,threshold_date)
    wrire_to_excel(folder_data,excel_file)
