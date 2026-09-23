.class Lcom/mycompany/app/dialog/DialogCast$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCast;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCast;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCast$1;->c:Lcom/mycompany/app/dialog/DialogCast;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCast$1;->c:Lcom/mycompany/app/dialog/DialogCast;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCast;->w:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCast;->C:Landroidx/mediarouter/app/MediaRouteButton;

    .line 6
    .line 7
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const v2, -0x50506

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/high16 v2, -0x1000000

    .line 16
    .line 17
    :goto_0
    invoke-static {v2, v1, v0}, Lcom/mycompany/app/main/MainUtil;->h7(ILandroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
