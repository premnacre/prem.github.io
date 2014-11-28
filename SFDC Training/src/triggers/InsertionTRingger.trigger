trigger InsertionTRingger on Test__c (before insert) {
	System.debug('value is inserted');
}