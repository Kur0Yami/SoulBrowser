.class Lcom/mycompany/app/web/WebViewActivity$507$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$507;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$507;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$507$1;->c:Lcom/mycompany/app/web/WebViewActivity$507;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$507$1;->c:Lcom/mycompany/app/web/WebViewActivity$507;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$507;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebVideoFrame;->e()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->b5()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->r6()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->I3(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->K3()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->X4(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->t6(Z)V

    .line 35
    .line 36
    .line 37
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->n:Z

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->k8()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Q1:Z

    .line 50
    .line 51
    if-nez v1, :cond_6

    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 54
    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    iget-boolean v1, v1, Lcom/mycompany/app/web/WebNestView;->z0:Z

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->n3(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-nez v1, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->k8()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 75
    .line 76
    if-nez v2, :cond_5

    .line 77
    .line 78
    :goto_0
    return-void

    .line 79
    :cond_5
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$508;

    .line 80
    .line 81
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebViewActivity$508;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 82
    .line 83
    .line 84
    const-wide/16 v4, 0x3e8

    .line 85
    .line 86
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    .line 88
    .line 89
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 90
    .line 91
    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 92
    .line 93
    iget-wide v8, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 94
    .line 95
    iget-object v10, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 96
    .line 97
    new-instance v11, Lcom/mycompany/app/web/WebViewActivity$509;

    .line 98
    .line 99
    invoke-direct {v11, v0}, Lcom/mycompany/app/web/WebViewActivity$509;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {v6 .. v11}, Lcom/mycompany/app/web/WebNestView;->V(Lcom/mycompany/app/web/WebNestFrame;JLjava/lang/String;Lcom/mycompany/app/web/WebNestView$WebBundleListener;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->k8()V

    .line 107
    .line 108
    .line 109
    return-void
.end method
