.class Lcom/mycompany/app/web/WebSnsTask$LoadTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebSnsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/web/WebSnsTask;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->g:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/web/WebSnsTask;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsTask;->c:Lcom/mycompany/app/web/WebSnsTask$LoadTask;

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->g:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->f:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v2}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget v2, v0, Lcom/mycompany/app/web/WebSnsTask;->a:I

    .line 29
    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebSnsTask;->c(Lcom/mycompany/app/web/WebSnsTask;Lorg/jsoup/nodes/Document;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->h:Ljava/util/ArrayList;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    const/4 v3, 0x1

    .line 40
    if-ne v2, v3, :cond_4

    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebSnsTask;->b(Lcom/mycompany/app/web/WebSnsTask;Lorg/jsoup/nodes/Document;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->h:Ljava/util/ArrayList;

    .line 47
    .line 48
    return-void

    .line 49
    :cond_4
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebSnsTask;->a(Lcom/mycompany/app/web/WebSnsTask;Lorg/jsoup/nodes/Document;)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->h:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    :catch_0
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/web/WebSnsTask;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/web/WebSnsTask;->c:Lcom/mycompany/app/web/WebSnsTask$LoadTask;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->f:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->g:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->h:Ljava/util/ArrayList;

    .line 23
    .line 24
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/web/WebSnsTask;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/web/WebSnsTask;->c:Lcom/mycompany/app/web/WebSnsTask$LoadTask;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/web/WebSnsTask;->b:Lcom/mycompany/app/web/WebSnsTask$SnsTaskListener;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->h:Ljava/util/ArrayList;

    .line 23
    .line 24
    check-cast v0, Lcom/mycompany/app/web/WebSnsLoad$15;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebSnsLoad$15;->a(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->f:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->g:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTask$LoadTask;->h:Ljava/util/ArrayList;

    .line 34
    .line 35
    return-void
.end method
