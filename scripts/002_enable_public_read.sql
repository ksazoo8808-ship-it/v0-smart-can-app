-- Enable RLS on sensor_data table if not already enabled
ALTER TABLE sensor_data ENABLE ROW LEVEL SECURITY;

-- Create policy to allow public read access to sensor_data
CREATE POLICY "Allow public read access" ON sensor_data
FOR SELECT
USING (true);

-- Create policy to allow public insert access for IoT devices
CREATE POLICY "Allow public insert access" ON sensor_data
FOR INSERT
WITH CHECK (true);
