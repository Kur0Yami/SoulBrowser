.class Lcom/mycompany/app/web/WebViewActivity$564;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$564;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$564;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->b3()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->h5(Landroid/content/res/Resources;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    sput-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->h5(Landroid/content/res/Resources;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sput-boolean v3, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 28
    .line 29
    iget-boolean v3, v1, Lcom/mycompany/app/web/WebViewActivity;->E4:Z

    .line 30
    .line 31
    invoke-virtual {v1, v2, v3, v0}, Lcom/mycompany/app/web/WebViewActivity;->k2(IZZ)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->G4:Z

    .line 36
    .line 37
    sget-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 38
    .line 39
    if-ne v2, v3, :cond_0

    .line 40
    .line 41
    iget v2, v1, Lcom/mycompany/app/web/WebViewActivity;->H4:I

    .line 42
    .line 43
    sget v5, Lcom/mycompany/app/pref/PrefWeb;->N:I

    .line 44
    .line 45
    if-eq v2, v5, :cond_1

    .line 46
    .line 47
    :cond_0
    iput-boolean v3, v1, Lcom/mycompany/app/web/WebViewActivity;->G4:Z

    .line 48
    .line 49
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->N:I

    .line 50
    .line 51
    iput v2, v1, Lcom/mycompany/app/web/WebViewActivity;->H4:I

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/web/WebNestView;->M(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    sget v0, Lcom/mycompany/app/main/MainApp;->M1:I

    .line 67
    .line 68
    if-ne v0, v4, :cond_2

    .line 69
    .line 70
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->q0:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->F4:Z

    .line 79
    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->n9()V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 86
    .line 87
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->E4:Z

    .line 92
    .line 93
    if-eq v2, v0, :cond_3

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->Z7(Z)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    iget v3, v1, Lcom/mycompany/app/web/WebViewActivity;->x5:I

    .line 104
    .line 105
    if-eq v3, v2, :cond_4

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->u3()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->I8(II)V

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->Z7(Z)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
