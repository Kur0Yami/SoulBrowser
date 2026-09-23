.class Lcom/mycompany/app/web/WebViewActivity$423;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogPopupMenu$PopupMenuListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$423;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$423;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 3
    .line 4
    if-eqz p1, :cond_5

    .line 5
    .line 6
    if-eq p1, v0, :cond_4

    .line 7
    .line 8
    const/4 p3, 0x2

    .line 9
    if-eq p1, p3, :cond_3

    .line 10
    .line 11
    const/4 p3, 0x3

    .line 12
    if-eq p1, p3, :cond_2

    .line 13
    .line 14
    const/4 p2, 0x4

    .line 15
    if-eq p1, p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v1}, Lcom/mycompany/app/web/WebViewActivity;->v1(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_1
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$423$2;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$423$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$423;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->k4()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2, v0}, Lcom/mycompany/app/web/WebViewActivity;->z3(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->k4()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p2, v0}, Lcom/mycompany/app/web/WebViewActivity;->r9(Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    iput-object p3, v1, Lcom/mycompany/app/web/WebViewActivity;->Qc:Ljava/lang/String;

    .line 54
    .line 55
    new-instance p1, Lcom/mycompany/app/web/WebViewActivity$423$1;

    .line 56
    .line 57
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebViewActivity$423$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$423;)V

    .line 58
    .line 59
    .line 60
    const/4 p3, 0x0

    .line 61
    invoke-virtual {v1, p3, p2, v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->F1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->k4()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_5
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->k4()V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    invoke-virtual {v1, p2, v0, p3, p1}, Lcom/mycompany/app/web/WebViewActivity;->G9(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
