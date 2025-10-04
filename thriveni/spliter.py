from sanskrit_parser import Parser
from sanskrit_parser.base.sanskrit_base import SanskritObject, SLP1

input_text = "धर्मक्षेत्रे कुरुक्षेत्रे समवेता युयुत्सवः"
sanskrit_text = SanskritObject(input_text, encoding=SLP1)

parser = Parser(input_text=sanskrit_text, input_encoding=SLP1, output_encoding=SLP1)
splits = parser.getSandhiSplits()

for i, split in enumerate(splits, 1):
    print(f"Split {i}: {' '.join(split)}")
