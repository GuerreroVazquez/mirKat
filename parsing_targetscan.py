import pandas as pd

# Read the input TSV file
input_file_path = 'targetscan/Predicted_Targets_Context_Scores.default_predictions.txt'
output_file_path = 'parsed/targetscan.txt'

# Read the TSV file and extract the required columns
data = pd.read_csv(input_file_path, sep='\t')
selected_columns = ['Gene Symbol', 'UTR_start', 'UTR end', 'miRNA', 'weighted context++ score']
filtered_data = data[selected_columns]

# Join 'UTR_start' and 'UTR end' columns and create a new column
filtered_data['UTR_range'] = filtered_data['UTR_start'].astype(str) + ',' + filtered_data['UTR end'].astype(str)

# Create empty third column
filtered_data['Empty Column'] = ''

# Add 'targetscan' column
filtered_data['Source'] = 'targetscan'

# Reorder the columns
output_columns = ['Gene Symbol', 'UTR_range', 'Empty Column', 'Source', 'miRNA', 'weighted context++ score']
filtered_data = filtered_data[output_columns]

# Save the modified data to the output TSV file
filtered_data.to_csv(output_file_path, sep='\t', index=False, header=False)