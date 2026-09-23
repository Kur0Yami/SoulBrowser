.class public Lcom/mycompany/app/view/GlideRequests;
.super Lcom/bumptech/glide/RequestManager;
.source "SourceFile"


# virtual methods
.method public final A()Lcom/mycompany/app/view/GlideRequest;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->n()Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/mycompany/app/view/GlideRequest;

    .line 6
    .line 7
    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;
    .locals 3

    .line 1
    new-instance v0, Lcom/mycompany/app/view/GlideRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->c:Lcom/bumptech/glide/Glide;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/RequestManager;->f:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final d()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->d()Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/mycompany/app/view/GlideRequest;

    .line 6
    .line 7
    return-object v0
.end method

.method public final k()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 1
    const-class v0, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/mycompany/app/view/GlideRequest;

    .line 8
    .line 9
    return-object v0
.end method

.method public final n()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->n()Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/mycompany/app/view/GlideRequest;

    .line 6
    .line 7
    return-object v0
.end method

.method public final r(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->r(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/mycompany/app/view/GlideRequest;

    .line 6
    .line 7
    return-object p1
.end method

.method public final s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/mycompany/app/view/GlideRequest;

    .line 6
    .line 7
    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->t(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/mycompany/app/view/GlideRequest;

    .line 6
    .line 7
    return-object p1
.end method

.method public final u(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/mycompany/app/view/GlideRequest;

    .line 6
    .line 7
    return-object p1
.end method

.method public final x(Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/mycompany/app/view/GlideOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->x(Lcom/bumptech/glide/request/RequestOptions;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Lcom/mycompany/app/view/GlideOptions;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/GlideOptions;->y(Lcom/bumptech/glide/request/RequestOptions;)Lcom/mycompany/app/view/GlideOptions;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->x(Lcom/bumptech/glide/request/RequestOptions;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final z()Lcom/mycompany/app/view/GlideRequest;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->d()Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/mycompany/app/view/GlideRequest;

    .line 6
    .line 7
    return-object v0
.end method
