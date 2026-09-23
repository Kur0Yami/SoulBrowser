.class Lcom/mycompany/app/main/MainListAdapter$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$14;->c:Lcom/mycompany/app/main/MainListAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter$14;->c:Lcom/mycompany/app/main/MainListAdapter;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_8

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_8

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 31
    .line 32
    iget-boolean v3, v0, Lcom/mycompany/app/main/MainListAdapter;->C:Z

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const-wide/16 v4, -0x1

    .line 51
    .line 52
    if-eqz v3, :cond_5

    .line 53
    .line 54
    iget-boolean v3, v0, Lcom/mycompany/app/main/MainListAdapter;->C:Z

    .line 55
    .line 56
    if-nez v3, :cond_4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    iget-wide v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 60
    .line 61
    cmp-long v3, v6, v4

    .line 62
    .line 63
    if-eqz v3, :cond_5

    .line 64
    .line 65
    iget-object v3, v0, Lcom/mycompany/app/main/MainListAdapter;->A:Ljava/lang/String;

    .line 66
    .line 67
    iget v8, v0, Lcom/mycompany/app/main/MainListAdapter;->e:I

    const/16 v9, 0x12

    if-ne v8, v9, :cond_hist_preload_fmt

    const-string v8, "yyyy.MM.dd HH:mm:ss"

    goto :goto_hist_preload_fmt

    :cond_hist_preload_fmt
    const-string v8, "yyyy.MM.dd"

    :goto_hist_preload_fmt
    .line 68
    .line 69
    invoke-static {v6, v7, v3, v8}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iput-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 74
    .line 75
    :cond_5
    iget v3, v0, Lcom/mycompany/app/main/MainListAdapter;->e:I

    .line 76
    .line 77
    const/16 v6, 0xd

    .line 78
    .line 79
    if-eq v3, v6, :cond_6

    .line 80
    .line 81
    const/16 v6, 0x20

    .line 82
    .line 83
    if-ne v3, v6, :cond_1

    .line 84
    .line 85
    :cond_6
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_1

    .line 92
    .line 93
    iget-boolean v3, v0, Lcom/mycompany/app/main/MainListAdapter;->C:Z

    .line 94
    .line 95
    if-nez v3, :cond_7

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_7
    iget-wide v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 99
    .line 100
    cmp-long v3, v6, v4

    .line 101
    .line 102
    if-eqz v3, :cond_1

    .line 103
    .line 104
    invoke-static {v6, v7}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iput-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_0
    :cond_8
    :goto_1
    return-void
.end method
