//   Bob is a lackadaisical teenager. In conversation, his responses are very limited.
export const hey = message => {
  message = message.trim();
  const isYelling = message.toUpperCase() === message && /[A-Z]/.test(message);
  const isQuestion = message.endsWith("?");

  if (!message) return "Fine. Be that way!";
  if (isYelling && isQuestion) return "Calm down, I know what I'm doing!";
  if (isYelling) return 'Whoa, chill out!';
  if (isQuestion) return 'Sure.' 
  return "Whatever.";
};


