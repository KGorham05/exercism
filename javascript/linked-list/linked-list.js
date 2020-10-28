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
    const valueToReturn = lastNode.value;
    if (lastNode.previous) {
      lastNode.previous.next = null;
    } else {
      this.head = null;
    }
    return valueToReturn;
  }

  shift() {
    const valueToReturn = this.head.value;
    this.head = this.head.next;
    if (this.head) {
      this.head.previous = null;
    }
    return valueToReturn;
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
      if (!node.previous && !node.next) {
        this.head = null;
      }
      if (!node.previous && node.next) {
        this.head = node.next;
      } 
      if (node.next) {
        node.next.previous = null;
      }
      if (node.previous) {
        node.previous.next = null;
      }
      if (node.previous && node.next) {
        node.previous.next = node.next;
        node.next.previous = node.previous;
      }
      node = null;
      return;
    } else {
      if (node.next) {
        return this.delete(value, node.next);
      } 
      return;
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

