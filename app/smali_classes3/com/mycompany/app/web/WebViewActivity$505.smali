.class Lcom/mycompany/app/web/WebViewActivity$505;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogWebSelect$WebSelectListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$505;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x9

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lcom/mycompany/app/web/WebViewActivity$505;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    const/16 v4, 0xa

    .line 8
    .line 9
    if-ne p1, v4, :cond_1

    .line 10
    .line 11
    const/16 p1, 0x1c

    .line 12
    .line 13
    invoke-static {v3, p1}, Lcom/mycompany/app/main/MainUtil;->D4(Landroid/app/Activity;I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iput-boolean v2, v3, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    invoke-static {v1, v3, p1}, Lcom/mycompany/app/main/MainUtil;->C4(ILcom/mycompany/app/main/MainActivity;Z)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, v3, Lcom/mycompany/app/web/WebViewActivity;->P5:Landroid/net/Uri;

    .line 28
    .line 29
    if-eqz p1, :cond_8

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 v5, 0xb

    .line 33
    .line 34
    if-ne p1, v5, :cond_3

    .line 35
    .line 36
    const/16 p1, 0x1d

    .line 37
    .line 38
    invoke-static {v3, p1}, Lcom/mycompany/app/main/MainUtil;->D4(Landroid/app/Activity;I)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iput-boolean v2, v3, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-static {v1, v3, v2}, Lcom/mycompany/app/main/MainUtil;->C4(ILcom/mycompany/app/main/MainActivity;Z)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, v3, Lcom/mycompany/app/web/WebViewActivity;->P5:Landroid/net/Uri;

    .line 52
    .line 53
    if-eqz p1, :cond_8

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    sget v6, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 57
    .line 58
    const/4 v6, 0x4

    .line 59
    if-eq p1, v6, :cond_4

    .line 60
    .line 61
    const/4 v7, 0x5

    .line 62
    if-ne p1, v7, :cond_5

    .line 63
    .line 64
    :cond_4
    invoke-static {v3, p1, v2, v1}, Lcom/mycompany/app/main/MainUtil;->L4(Lcom/mycompany/app/main/MainActivity;IZI)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    if-ne p1, v6, :cond_6

    .line 72
    .line 73
    invoke-static {v4, v3, v2}, Lcom/mycompany/app/main/MainUtil;->K4(ILcom/mycompany/app/main/MainActivity;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    iget-object p1, v3, Lcom/mycompany/app/web/WebViewActivity;->M5:Landroid/webkit/ValueCallback;

    .line 80
    .line 81
    iput-object p1, v3, Lcom/mycompany/app/web/WebViewActivity;->N5:Landroid/webkit/ValueCallback;

    .line 82
    .line 83
    iput-object v0, v3, Lcom/mycompany/app/web/WebViewActivity;->M5:Landroid/webkit/ValueCallback;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_6
    invoke-static {v3, p1, v2, v5}, Lcom/mycompany/app/main/MainUtil;->J4(Lcom/mycompany/app/main/MainActivity;IZI)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    iget-object p1, v3, Lcom/mycompany/app/web/WebViewActivity;->M5:Landroid/webkit/ValueCallback;

    .line 93
    .line 94
    iput-object p1, v3, Lcom/mycompany/app/web/WebViewActivity;->O5:Landroid/webkit/ValueCallback;

    .line 95
    .line 96
    iput-object v0, v3, Lcom/mycompany/app/web/WebViewActivity;->M5:Landroid/webkit/ValueCallback;

    .line 97
    .line 98
    :goto_0
    iput-boolean v2, v3, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 99
    .line 100
    return-void

    .line 101
    :cond_7
    sget p1, Lnet/kaki87/soul2/testing/R$string;->apps_none:I

    .line 102
    .line 103
    invoke-static {v3, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 104
    .line 105
    .line 106
    :cond_8
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 107
    .line 108
    invoke-virtual {v3, v0}, Lcom/mycompany/app/web/WebViewActivity;->c6([Landroid/net/Uri;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$505;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->c6([Landroid/net/Uri;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
