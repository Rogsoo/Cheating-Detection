# Exam Monitoring System

This project implements functionalities to monitor student behavior during an exam, aiming to prevent cheating and unauthorized activities. It includes features to detect multiple login IPs, track file versions, and compare student files post-exam, providing instructors with insights into potential academic integrity violations.

## Functionalities Implemented

### Feature 1: Preventing Multiple Login IPs

- **Filename:** `prevent_multiple_login_ips.sh`
- **Description:** This script continuously checks for multiple unique IP addresses associated with a student during the exam, printing violation details if detected.

### Feature 2: Tracking File Versions

- **Filename:** `track_file_versions.sh`
- **Description:** Monitors and tracks changes in student files during the exam by comparing with previously saved versions, copying new versions, and printing relevant information.

### Feature 3: Comparing Student Files Post-Exam

- **Filename:** `compare_student_files.sh`
- **Description:** Compares student files post-exam against instructor copies to identify differences and potential violations, providing a report on discrepancies.

## Usage Instructions

1. **Setup Environment:**
   - Ensure the scripts are executable (`chmod +x filename.sh`).

2. **Run Scripts:**
   - Use `timeout` command to run scripts for the duration of the exam:
     ```bash
     timeout 6000 ./filename.sh  # Replace `filename.sh` with the script name
     ```

3. **Review Results:**
   - Monitor script outputs during and after the exam to identify any suspicious activity or violations.

## Notes

- These scripts are designed for educational and mock exam scenarios only.
- Modify timeouts and script frequencies (`timeout` duration and execution intervals) based on exam durations and monitoring needs.
