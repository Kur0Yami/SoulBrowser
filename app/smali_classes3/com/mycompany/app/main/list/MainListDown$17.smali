.class Lcom/mycompany/app/main/list/MainListDown$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/cast/CastUtil$CastSendListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/list/MainListDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListDown;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$17;->a:Lcom/mycompany/app/main/list/MainListDown;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$17;->a:Lcom/mycompany/app/main/list/MainListDown;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget p1, Lnet/kaki87/soul2/testing/R$string;->play_error:I

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListDown;->U1:Lcom/mycompany/app/cast/CastUtil;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/mycompany/app/cast/CastUtil;->b()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, v0, Lcom/mycompany/app/main/list/MainListDown;->U1:Lcom/mycompany/app/cast/CastUtil;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/list/MainListDown;->J0()V

    .line 24
    .line 25
    .line 26
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListDown;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :cond_2
    new-instance v1, Lcom/mycompany/app/main/list/MainListDown$18;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/list/MainListDown$18;-><init>(Lcom/mycompany/app/main/list/MainListDown;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
