.class Lcom/mycompany/app/web/WebViewActivity$99$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$99$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$99$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$99$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$99$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$99$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$99$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$99$1;->a:Lcom/mycompany/app/web/WebViewActivity$99;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$99;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ge:Lcom/mycompany/app/web/WebNestFrame;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->he:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->ie:Z

    .line 12
    .line 13
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->je:Z

    .line 14
    .line 15
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->ke:Z

    .line 16
    .line 17
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->le:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 18
    .line 19
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->me:Z

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    iput-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->ge:Lcom/mycompany/app/web/WebNestFrame;

    .line 23
    .line 24
    iput-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->he:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->le:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 27
    .line 28
    const/4 v9, 0x1

    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iput-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 38
    .line 39
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 40
    .line 41
    iput-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->D8:Ljava/lang/String;

    .line 44
    .line 45
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->G8:Z

    .line 46
    .line 47
    invoke-virtual {v0, v8}, Lcom/mycompany/app/web/WebViewActivity;->a9(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Li:Z

    .line 51
    .line 52
    iput-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->Mi:Ljava/lang/String;

    .line 53
    .line 54
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 55
    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Qc:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->Qc:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_2

    .line 67
    .line 68
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 69
    .line 70
    :cond_2
    iget-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 71
    .line 72
    invoke-virtual {v8, v2, v1}, Lcom/mycompany/app/web/WebNestView;->h(Ljava/lang/String;Z)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2, v1, v9}, Lcom/mycompany/app/web/WebViewActivity;->T8(Ljava/lang/String;ZZ)V

    .line 77
    .line 78
    .line 79
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->D8:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 82
    .line 83
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    :goto_0
    const-string v1, "about:blank"

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    xor-int/2addr v1, v9

    .line 94
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Lb:Z

    .line 95
    .line 96
    invoke-virtual {v0, v2, v9, v9}, Lcom/mycompany/app/web/WebViewActivity;->T8(Ljava/lang/String;ZZ)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v9}, Lcom/mycompany/app/web/WebViewActivity;->u7(Z)V

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_1
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->ne:Z

    .line 103
    .line 104
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->oe:Z

    .line 105
    .line 106
    iput-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->pe:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 107
    .line 108
    iput-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->qe:Z

    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 111
    .line 112
    if-nez v1, :cond_5

    .line 113
    .line 114
    return-void

    .line 115
    :cond_5
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$100;

    .line 116
    .line 117
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$100;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 121
    .line 122
    .line 123
    return-void
.end method
