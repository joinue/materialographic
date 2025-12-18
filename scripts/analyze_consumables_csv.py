#!/usr/bin/env python3
"""
Analyze the consumables CSV to understand its structure
"""
import csv
from collections import defaultdict

def analyze_csv(filename):
    categories = defaultdict(set)
    total_rows = 0
    valid_rows = 0
    
    with open(filename, 'r', encoding='utf-8-sig') as f:  # utf-8-sig handles BOM
        reader = csv.DictReader(f)
        
        for row in reader:
            total_rows += 1
            
            # Handle BOM in column name
            name_key = 'name' if 'name' in row else '\ufeffname'
            name = row.get(name_key, '').strip()
            category = row.get('category', '').strip()
            price = row.get(' price ', '').strip()  # Note the spaces
            
            # Skip empty rows
            if not name or not category:
                continue
                
            valid_rows += 1
            subcategory = row.get('subcategory', '').strip()
            
            if subcategory:
                categories[category].add(subcategory)
            else:
                categories[category].add('General')
    
    print(f"Total rows: {total_rows}")
    print(f"Valid rows: {valid_rows}")
    print(f"\nCategories and Subcategories:")
    print("=" * 80)
    
    for category in sorted(categories.keys()):
        print(f"\n{category}:")
        for subcat in sorted(categories[category]):
            print(f"  - {subcat}")
    
    return categories

if __name__ == '__main__':
    categories = analyze_csv('pace_consumables_2026.csv')
    print(f"\n\nTotal categories: {len(categories)}")
