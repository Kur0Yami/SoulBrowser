.class Lcom/mycompany/app/main/MainListAdapter2$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListAdapter2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter2$10;->c:Lcom/mycompany/app/main/MainListAdapter2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2$10;->c:Lcom/mycompany/app/main/MainListAdapter2;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_5

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

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
    if-eqz v2, :cond_5

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
    iget-boolean v3, v0, Lcom/mycompany/app/main/MainListAdapter2;->u:Z

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
    if-eqz v3, :cond_1

    .line 51
    .line 52
    iget-boolean v3, v0, Lcom/mycompany/app/main/MainListAdapter2;->u:Z

    .line 53
    .line 54
    if-nez v3, :cond_4

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    iget-wide v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 58
    .line 59
    const-wide/16 v5, -0x1

    .line 60
    .line 61
    cmp-long v5, v3, v5

    .line 62
    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    iget-object v5, v0, Lcom/mycompany/app/main/MainListAdapter2;->s:Ljava/lang/String;

    .line 66
    .line 67
    const-string v6, "yyyy.MM.dd"

    .line 68
    .line 69
    invoke-static {v3, v4, v5, v6}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iput-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    :cond_5
    :goto_1
    return-void
.end method
