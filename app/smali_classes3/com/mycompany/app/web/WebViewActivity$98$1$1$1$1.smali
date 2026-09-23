.class Lcom/mycompany/app/web/WebViewActivity$98$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$98$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$98$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$98$1$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$98$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$98$1$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$98$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$98$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$98$1$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$98$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$98$1;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$98$1;->c:Lcom/mycompany/app/web/WebViewActivity$98;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$98;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 10
    .line 11
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Wd:Lcom/mycompany/app/web/WebNestFrame;

    .line 12
    .line 13
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->Xd:Ljava/lang/String;

    .line 14
    .line 15
    iget-boolean v5, v1, Lcom/mycompany/app/web/WebViewActivity;->Yd:Z

    .line 16
    .line 17
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->Zd:Z

    .line 18
    .line 19
    iget-boolean v7, v1, Lcom/mycompany/app/web/WebViewActivity;->ae:Z

    .line 20
    .line 21
    iget-boolean v8, v1, Lcom/mycompany/app/web/WebViewActivity;->be:Z

    .line 22
    .line 23
    iget-boolean v9, v1, Lcom/mycompany/app/web/WebViewActivity;->ce:Z

    .line 24
    .line 25
    iget-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->de:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 26
    .line 27
    iget-boolean v11, v1, Lcom/mycompany/app/web/WebViewActivity;->ee:Z

    .line 28
    .line 29
    iget-boolean v12, v1, Lcom/mycompany/app/web/WebViewActivity;->fe:Z

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Wd:Lcom/mycompany/app/web/WebNestFrame;

    .line 33
    .line 34
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Xd:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->de:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 37
    .line 38
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/mycompany/app/web/WebNestFrame;->getBackItem()Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :cond_0
    const/4 v13, 0x1

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget v2, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    if-nez v5, :cond_3

    .line 53
    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v2, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    :goto_0
    move v2, v13

    .line 60
    :goto_1
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->J2(Z)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    :goto_2
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 65
    .line 66
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/web/WebViewActivity;->V1(ILjava/lang/String;Lcom/mycompany/app/web/WebNestFrame;ZZ)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iput v2, v1, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 71
    .line 72
    if-eqz v11, :cond_4

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->n3(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    iput-boolean v13, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->o:Z

    .line 81
    .line 82
    :cond_4
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->ge:Lcom/mycompany/app/web/WebNestFrame;

    .line 83
    .line 84
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->he:Ljava/lang/String;

    .line 85
    .line 86
    iput-boolean v7, v1, Lcom/mycompany/app/web/WebViewActivity;->ie:Z

    .line 87
    .line 88
    iput-boolean v8, v1, Lcom/mycompany/app/web/WebViewActivity;->je:Z

    .line 89
    .line 90
    iput-boolean v9, v1, Lcom/mycompany/app/web/WebViewActivity;->ke:Z

    .line 91
    .line 92
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->le:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 93
    .line 94
    iput-boolean v12, v1, Lcom/mycompany/app/web/WebViewActivity;->me:Z

    .line 95
    .line 96
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 97
    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    return-void

    .line 101
    :cond_5
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$99;

    .line 102
    .line 103
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$99;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    return-void
.end method
