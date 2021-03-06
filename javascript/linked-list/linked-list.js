class ListNode {
  constructor(value, previous, next) {
    this.value = value;
    this.next = next;
    this.previous = previous;
  }
}

export class LinkedList {
  constructor(head = null) {
    this.head = head;
  }

  push(value) {
    const lastNode = this.traverse();
    const newNode = new ListNode(value, lastNode, null);
    if (this.head == null) {
      this.head = newNode;
    } else {
      lastNode.next = newNode;
    }
  }

  pop() {
    const lastNode = this.traverse();
    const value = lastNode.value;
    if (lastNode.previous) {
      lastNode.previous.next = null;
    } else {
      this.head = null;
    }
    return value;
  }

  shift() {
    const value = this.head.value;
    this.head = this.head.next;
    if (this.head) {
      this.head.previous = null;
    }
    return value;
  }

  unshift(value) {
    const newNode = new ListNode(value, null, this.head);
    if (this.head) {
      this.head.previous = newNode;
    }
    this.head = newNode;
  }

  delete(value, node = this.head) {
    if (node.value == value) {
      if (node.previous) {
        node.previous.next = node.next;
      } else {
        this.head = node.next;
      }
      if (node.next) {
        node.next.previous = node.previous;
      }
    } else {
      if (node.next) {
        return this.delete(value, node.next);
      }
    }
  }

  traverse(node = this.head) {
    if (node == null || node.next == null) {
      return node;
    } else {
      return this.traverse(node.next);
    }
  }

  count() {
    let size = 0;
    let node = this.head;
    while (node) {
      size++;
      node = node.next;
    }
    return size;
  }
}

const list = new LinkedList();

