module.exports = async($, router) => {
	let time = new Date();

	router.post('/push', async(ctx, next) => {
		await next();

		L('webhook');

		require('child_process').spawn('sh', [$.pa('webhook.sh')]);

		ctx.body = 'webhook';
	});

	router.get('/time', async(ctx, next) => {
		await next();

		ctx.body = Math.round((new Date().getTime() - time.getTime()) / 1000);
	});
};