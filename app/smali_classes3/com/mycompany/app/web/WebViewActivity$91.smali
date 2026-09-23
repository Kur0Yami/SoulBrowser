.class Lcom/mycompany/app/web/WebViewActivity$91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$91;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->I:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$91;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 9
    .line 10
    goto :goto_4

    .line 11
    :cond_0
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_4

    .line 16
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    sget v5, Lcom/mycompany/app/pref/PrefZtwo;->I:I

    .line 21
    .line 22
    int-to-long v5, v5

    .line 23
    const-wide/32 v7, 0x5265c00

    .line 24
    .line 25
    .line 26
    mul-long/2addr v5, v7

    .line 27
    sub-long/2addr v3, v5

    .line 28
    :try_start_0
    iget-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 29
    .line 30
    if-nez v5, :cond_2

    .line 31
    .line 32
    goto :goto_4

    .line 33
    :cond_2
    const/4 v6, 0x1

    .line 34
    invoke-virtual {v5, v3, v4, v6}, Lcom/mycompany/app/web/WebNestFrame;->L(JZ)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    move v7, v2

    .line 42
    :goto_0
    if-ge v7, v5, :cond_a

    .line 43
    .line 44
    iget v8, v1, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 45
    .line 46
    if-ne v7, v8, :cond_3

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_3
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 54
    .line 55
    if-nez v8, :cond_4

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    iget-object v9, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 59
    .line 60
    if-nez v9, :cond_5

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_5
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-nez v10, :cond_7

    .line 68
    .line 69
    :cond_6
    :goto_1
    move v9, v6

    .line 70
    goto :goto_2

    .line 71
    :cond_7
    iget-object v9, v9, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 72
    .line 73
    if-eqz v9, :cond_6

    .line 74
    .line 75
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_8

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_8
    move v9, v2

    .line 83
    :goto_2
    if-eqz v9, :cond_9

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_9
    iget-object v8, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 87
    .line 88
    invoke-virtual {v8, v3, v4, v2}, Lcom/mycompany/app/web/WebNestFrame;->L(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    :cond_a
    :goto_4
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->pc:Z

    .line 95
    .line 96
    return-void
.end method
