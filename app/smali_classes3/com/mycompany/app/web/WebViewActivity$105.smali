.class Lcom/mycompany/app/web/WebViewActivity$105;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$105;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$105;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ge:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->He:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Ie:Z

    .line 8
    .line 9
    iget v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Je:I

    .line 10
    .line 11
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Ke:I

    .line 12
    .line 13
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Le:Z

    .line 14
    .line 15
    iget v7, v0, Lcom/mycompany/app/web/WebViewActivity;->Me:I

    .line 16
    .line 17
    iget v8, v0, Lcom/mycompany/app/web/WebViewActivity;->Ne:I

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    iput-object v9, v0, Lcom/mycompany/app/web/WebViewActivity;->Ge:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v9, v0, Lcom/mycompany/app/web/WebViewActivity;->He:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v10, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 25
    .line 26
    const/4 v11, 0x0

    .line 27
    if-nez v10, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->w6()V

    .line 30
    .line 31
    .line 32
    iput-boolean v11, v0, Lcom/mycompany/app/web/WebViewActivity;->sc:Z

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v10, v0, Lcom/mycompany/app/web/WebViewActivity;->Gb:Lcom/mycompany/app/web/WebNestView;

    .line 36
    .line 37
    if-eqz v10, :cond_2

    .line 38
    .line 39
    iget-object v12, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 40
    .line 41
    if-eqz v12, :cond_1

    .line 42
    .line 43
    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v10, v0, Lcom/mycompany/app/web/WebViewActivity;->Gb:Lcom/mycompany/app/web/WebNestView;

    .line 47
    .line 48
    iput-object v10, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 49
    .line 50
    iput-object v9, v0, Lcom/mycompany/app/web/WebViewActivity;->Gb:Lcom/mycompany/app/web/WebNestView;

    .line 51
    .line 52
    invoke-virtual {v10, v11}, Lcom/mycompany/app/web/WebNestView;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    const/4 v11, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->i6()V

    .line 58
    .line 59
    .line 60
    new-instance v9, Lcom/mycompany/app/web/WebNestView;

    .line 61
    .line 62
    invoke-direct {v9, v0}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    iput-object v9, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 66
    .line 67
    invoke-virtual {v0, v9}, Lcom/mycompany/app/web/WebViewActivity;->K8(Lcom/mycompany/app/web/WebNestView;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Oe:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Pe:Ljava/lang/String;

    .line 73
    .line 74
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Qe:Z

    .line 75
    .line 76
    iput v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Re:I

    .line 77
    .line 78
    iput v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Se:I

    .line 79
    .line 80
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Te:Z

    .line 81
    .line 82
    iput v7, v0, Lcom/mycompany/app/web/WebViewActivity;->Ue:I

    .line 83
    .line 84
    iput v8, v0, Lcom/mycompany/app/web/WebViewActivity;->Ve:I

    .line 85
    .line 86
    iput-boolean v11, v0, Lcom/mycompany/app/web/WebViewActivity;->We:Z

    .line 87
    .line 88
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 89
    .line 90
    if-nez v1, :cond_3

    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$106;

    .line 94
    .line 95
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$106;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    return-void
.end method
