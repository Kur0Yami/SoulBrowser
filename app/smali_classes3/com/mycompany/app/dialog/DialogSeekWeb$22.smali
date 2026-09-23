.class Lcom/mycompany/app/dialog/DialogSeekWeb$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/wview/WebFltView$FltViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSeekWeb;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$22;->a:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$22;->a:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->t0:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZtri;->p0:Z

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    sput-boolean p2, Lcom/mycompany/app/pref/PrefZtri;->p0:Z

    .line 14
    .line 15
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->e0:Landroid/content/Context;

    .line 16
    .line 17
    const/16 v1, 0x11

    .line 18
    .line 19
    const-string v2, "mNotiZoom"

    .line 20
    .line 21
    invoke-static {v1, v0, v2, p2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->n1:Lcom/mycompany/app/wview/WebFltView;

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Lcom/mycompany/app/wview/WebFltView;->setNoti(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->t0:Lcom/mycompany/app/web/WebNestView;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getTextZoom()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iget v0, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->Y0:I

    .line 40
    .line 41
    if-eq p2, v0, :cond_2

    .line 42
    .line 43
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->t0:Lcom/mycompany/app/web/WebNestView;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iget p1, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->Y0:I

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget v0, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->Z0:I

    .line 56
    .line 57
    if-eq p2, v0, :cond_3

    .line 58
    .line 59
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->t0:Lcom/mycompany/app/web/WebNestView;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget p1, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->Z0:I

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
