.class Lcom/mycompany/app/web/WebVideoFull$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyFadeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$27;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$27;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v0, Lcom/mycompany/app/web/WebVideoFull$27$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoFull$27$1;-><init>(Lcom/mycompany/app/web/WebVideoFull$27;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final b(ZZ)V
    .locals 0

    .line 1
    return-void
.end method
