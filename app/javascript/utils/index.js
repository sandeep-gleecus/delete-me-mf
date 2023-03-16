export const getDateNumberOfYearsAgo = (numOfYears) => {
  const today = new Date();
  const todaysYear = today.getFullYear();
  const todaysMonth = today.getMonth() + 1;
  const todaysDay = today.getDate();

  return new Date(todaysYear - numOfYears, todaysMonth - 1, todaysDay);
};
