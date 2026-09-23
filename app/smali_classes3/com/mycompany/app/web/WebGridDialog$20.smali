.class Lcom/mycompany/app/web/WebGridDialog$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/cast/CastUtil$CastSendListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebGridDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebGridDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridDialog$20;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$20;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, v0, Lcom/mycompany/app/web/WebGridDialog;->H:Landroid/content/Context;

    .line 7
    .line 8
    sget v2, Lnet/kaki87/soul2/testing/R$string;->play_error:I

    .line 9
    .line 10
    invoke-static {p1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, v0, Lcom/mycompany/app/web/WebGridDialog;->H0:Lcom/mycompany/app/cast/CastUtil;

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/mycompany/app/cast/CastUtil;->b()V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->H0:Lcom/mycompany/app/cast/CastUtil;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p1, v0, Lcom/mycompany/app/web/WebGridDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, v0, Lcom/mycompany/app/web/WebGridDialog;->H0:Lcom/mycompany/app/cast/CastUtil;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/mycompany/app/cast/CastUtil;->b()V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->H0:Lcom/mycompany/app/cast/CastUtil;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 38
    .line 39
    iget-object v2, v0, Lcom/mycompany/app/web/WebGridDialog;->H:Landroid/content/Context;

    .line 40
    .line 41
    const-class v3, Lcom/mycompany/app/cast/ExpandedControlsActivity;

    .line 42
    .line 43
    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Lcom/mycompany/app/web/WebGridDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, Lcom/mycompany/app/web/WebGridDialog;->H0:Lcom/mycompany/app/cast/CastUtil;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/mycompany/app/cast/CastUtil;->b()V

    .line 56
    .line 57
    .line 58
    iput-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->H0:Lcom/mycompany/app/cast/CastUtil;

    .line 59
    .line 60
    :cond_2
    return-void
.end method
