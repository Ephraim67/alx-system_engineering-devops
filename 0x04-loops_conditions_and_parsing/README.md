# **Bash Loops Explained**
Loops in Bash allow executing a set of commands multiple times, making automation and scripting efficient. There are different types of loops in Bash:

1. **For Loop (C-Style)**
2. **For Loop (List/Range)**
3. **While Loop**
4. **Until Loop**
5. **Looping Through Arrays**
6. **Break and Continue Statements**
7. **Infinite Loops**

---

## **1. C-Style For Loop**
This for loop follows a syntax similar to C or C++:

```bash
for ((initialize ; condition ; increment)); do
    [COMMANDS]
done
```

### **Example: Print "Hello Friend" 10 times**
```bash
for ((i = 0 ; i < 10 ; i++)); do
    echo "Hello Friend"
done
```

### **Explanation:**
- `i` is initialized to `0`.
- The condition `i < 10` is checked; if true, it executes the loop.
- The loop prints `"Hello Friend"`, then increments `i` by `1`.
- The loop repeats until `i` is no longer `< 10`.

#### **Output:**
```
Hello Friend
Hello Friend
Hello Friend
...
Hello Friend (10 times)
```

---

## **2. For Loop (List/Range)**
Another way to write a `for` loop is by iterating over a list of values.

```bash
for item in [LIST]; do
    [COMMANDS]
done
```

### **Example: Print "Hello Friend" 10 times using range**
```bash
for i in {1..10}; do
    echo "Hello Friend"
done
```

This does the same thing as the C-style loop but uses a list of numbers `{1..10}`.

---

## **3. While Loop**
A `while` loop runs as long as a given condition is true.

### **Syntax:**
```bash
while [ condition ]; do
    [COMMANDS]
done
```

### **Example: Print first 10 multiples of 3**
```bash
#!/bin/bash

num=1
while [ $num -le 10 ]; do
    echo $(($num * 3))
    num=$(($num+1))
done
```

### **Explanation:**
- `num` starts at `1`.
- The loop runs as long as `num ≤ 10`.
- It prints `num * 3` and increments `num` by `1`.

#### **Output:**
```
3
6
9
12
15
18
21
24
27
30
```

---

## **4. Until Loop**
An `until` loop works the opposite way of a `while` loop—it runs until a condition becomes **true**.

### **Syntax:**
```bash
until [ condition ]; do
    [COMMANDS]
done
```

### **Example: Print first 10 multiples of 3 using `until`**
```bash
#!/bin/bash

num=1
until [ $num -gt 10 ]; do
    echo $(($num * 3))
    num=$(($num+1))
done
```

### **Explanation:**
- The loop continues running **until** `num > 10`.

---

## **5. Looping Through Arrays**
You can use a `for` loop to iterate over an array.

### **Example: Print Prime Numbers**
```bash
#!/bin/bash

prime=(2 3 5 7 11 13 17 19 23 29)
for i in "${prime[@]}"; do
    echo $i
done 
```

#### **Output:**
```
2
3
5
7
11
13
17
19
23
29
```

---

## **6. Break and Continue in Loops**
### **Break Statement**
The `break` statement stops a loop immediately.

```bash
for ((i=1;i<=10;i++)); do
    echo $i
    if [ $i -eq 3 ]; then
        break
    fi
done
```

#### **Output:**
```
1
2
3
```
Since `i = 3`, the loop terminates.

---

### **Continue Statement**
The `continue` statement skips the current iteration and moves to the next.

```bash
#!/bin/bash
for ((i=0;i<=10;i++)); do
    if [ $(($i % 2)) -ne 1 ]; then
        continue
    fi
    echo $i
done
```

#### **Output:**
```
1
3
5
7
9
```
Even numbers are skipped.

---

## **7. Infinite Loops**
### **Mistake: Unintentional Infinite Loop**
```bash
for ((i=10;i>0;i++)); do
    echo $i
done 
```
This loop keeps **increasing** `i`, so it **never stops**.

### **Fix: Decrease `i`**
```bash
for ((i=10;i>0;i--)); do
    echo $i
done 
```

### **Intentional Infinite Loops**
#### **For Loop**
```bash
for ((;;)); do
    [COMMANDS]
done 
```

#### **While Loop**
```bash
while [ true ]; do
    [COMMANDS]
done
```

Bash loops help automate tasks efficiently. Key takeaways:
- **For loops** can be C-style or list-based.
- **While loops** run **while** a condition is true.
- **Until loops** run **until** a condition is true.
- **Break and continue** modify loop behavior.
- **Infinite loops** can be useful but must be handled carefully.

---

In Bash scripting, you can use **greater than (`-gt`)** and **less than (`-lt`)** operators for numerical comparisons in loops. Below are examples demonstrating how to use them with different types of loops:

---

## **1. Using `-lt` (Less Than) in a `while` Loop**
This loop runs **while** the condition `counter < 10` is true.

```bash
#!/bin/bash

counter=1  # Initialize counter

while [ $counter -lt 10 ]; do
    echo "Counter is at: $counter"
    counter=$((counter + 1))  # Increment counter
done
```
### **Explanation:**
- `-lt` means "less than".
- The loop runs while `counter` is **less than 10**.
- `counter=$((counter + 1))` increments the counter.

### **Output:**
```
Counter is at: 1
Counter is at: 2
Counter is at: 3
Counter is at: 4
Counter is at: 5
Counter is at: 6
Counter is at: 7
Counter is at: 8
Counter is at: 9
```

---

## **2. Using `-gt` (Greater Than) in a `while` Loop**
This loop runs **while** the condition `counter > 0` is true.

```bash
#!/bin/bash

counter=10  # Initialize counter

while [ $counter -gt 0 ]; do
    echo "Counter is at: $counter"
    counter=$((counter - 1))  # Decrement counter
done
```

### **Explanation:**
- `-gt` means "greater than".
- The loop runs while `counter` is **greater than 0**.
- `counter=$((counter - 1))` decrements the counter.

### **Output:**
```
Counter is at: 10
Counter is at: 9
Counter is at: 8
Counter is at: 7
Counter is at: 6
Counter is at: 5
Counter is at: 4
Counter is at: 3
Counter is at: 2
Counter is at: 1
```

---

## **3. Using `-lt` in a `for` Loop**
The loop runs while the counter is **less than 5**.

```bash
#!/bin/bash

for ((i=1; i -lt 5; i++)); do
    echo "Iteration: $i"
done
```

### **Output:**
```
Iteration: 1
Iteration: 2
Iteration: 3
Iteration: 4
```

---

## **4. Using `-gt` in a `for` Loop**
This loop counts **downward** from 5 to 1.

```bash
#!/bin/bash

for ((i=5; i -gt 0; i--)); do
    echo "Countdown: $i"
done
```

### **Output:**
```
Countdown: 5
Countdown: 4
Countdown: 3
Countdown: 2
Countdown: 1
```

---

### **Comparison Operators in Bash**
| Operator | Meaning |
|----------|---------|
| `-lt` | Less Than |
| `-le` | Less Than or Equal To |
| `-gt` | Greater Than |
| `-ge` | Greater Than or Equal To |
| `-eq` | Equal To |
| `-ne` | Not Equal To |
