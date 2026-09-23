.class Lcom/mycompany/app/web/WebViewActivity$140$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$140$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$140$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$140$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$140$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$140$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$140$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$140$1;->a:Lcom/mycompany/app/web/WebViewActivity$140;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$140;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Wf:Lcom/mycompany/app/web/WebNestFrame;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Wf:Lcom/mycompany/app/web/WebNestFrame;

    .line 11
    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    iget-boolean v3, v1, Lcom/mycompany/app/web/WebNestFrame;->c:Z

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestFrame;->getPageCreate()Lcom/mycompany/app/web/WebNestView;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestFrame;->D()V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-virtual {v1, v4}, Lcom/mycompany/app/web/WebNestFrame;->w(Z)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual {v1, v5}, Lcom/mycompany/app/web/WebNestFrame;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestFrame;->getBackItem()Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    iget-wide v5, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 44
    .line 45
    const-wide/16 v7, 0x0

    .line 46
    .line 47
    cmp-long v5, v5, v7

    .line 48
    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/mycompany/app/web/WebNestView;->getUrl()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/mycompany/app/web/WebViewActivity;->F1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v3}, Lcom/mycompany/app/web/WebNestView;->getUrl()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/mycompany/app/web/WebViewActivity;->O1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->d3:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$141;

    .line 72
    .line 73
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$141;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_1
    return-void
.end method
