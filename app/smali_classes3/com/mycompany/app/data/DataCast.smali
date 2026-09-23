.class public Lcom/mycompany/app/data/DataCast;
.super Lcom/mycompany/app/data/DataList;
.source "SourceFile"


# direct methods
.method public static m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCast;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/mycompany/app/data/DataCast;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp;->f0:Lcom/mycompany/app/data/DataCast;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    const-class v0, Lcom/mycompany/app/data/DataCast;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainApp;->f0:Lcom/mycompany/app/data/DataCast;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/mycompany/app/data/DataCast;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/main/MainApp;->f0:Lcom/mycompany/app/data/DataCast;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    monitor-exit v0

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/mycompany/app/main/MainApp;->f0:Lcom/mycompany/app/data/DataCast;

    .line 39
    .line 40
    return-object p0
.end method


# virtual methods
.method public final h(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p2, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 17
    .line 18
    iget-wide v1, p2, Lcom/mycompany/app/main/MainUri$UriItem;->g:J

    .line 19
    .line 20
    iput-wide v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 21
    .line 22
    iget-wide v1, p2, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 23
    .line 24
    iput-wide v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 25
    .line 26
    iget p2, p2, Lcom/mycompany/app/main/MainUri$UriItem;->a:I

    .line 27
    .line 28
    iput p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 29
    .line 30
    const v1, -0x70708

    .line 31
    .line 32
    .line 33
    iput v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    if-ne p2, v1, :cond_1

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    iput p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 40
    .line 41
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 42
    .line 43
    iput p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x6

    .line 47
    if-ne p2, v1, :cond_2

    .line 48
    .line 49
    const/4 p2, 0x3

    .line 50
    iput p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 51
    .line 52
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_music_note_black_24:I

    .line 53
    .line 54
    iput p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 55
    .line 56
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->Q:Ljava/lang/String;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 p2, 0x2

    .line 64
    iput p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 65
    .line 66
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 67
    .line 68
    iput p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 69
    .line 70
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->Q:Ljava/lang/String;

    .line 75
    .line 76
    :goto_0
    invoke-static {p1}, Lcom/mycompany/app/list/ListTaskCast;->p(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 77
    .line 78
    .line 79
    return-object p1
.end method
