.class Lcom/mycompany/app/web/WebViewActivity$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/cast/CastUtil$CastSendListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$38;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$38;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 7
    .line 8
    sget p1, Lnet/kaki87/soul2/testing/R$string;->play_error:I

    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->dc:Lcom/mycompany/app/cast/CastUtil;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/mycompany/app/cast/CastUtil;->b()V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->dc:Lcom/mycompany/app/cast/CastUtil;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->E9:Z

    .line 25
    .line 26
    new-instance p1, Landroid/content/Intent;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 29
    .line 30
    const-class v3, Lcom/mycompany/app/cast/ExpandedControlsActivity;

    .line 31
    .line 32
    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->dc:Lcom/mycompany/app/cast/CastUtil;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/mycompany/app/cast/CastUtil;->b()V

    .line 43
    .line 44
    .line 45
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->dc:Lcom/mycompany/app/cast/CastUtil;

    .line 46
    .line 47
    :cond_1
    return-void
.end method
