.class Lcom/mycompany/app/dialog/DialogCastGuide$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCastGuide;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCastGuide;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCastGuide$9;->c:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCastGuide$9;->c:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCastGuide;->l0:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x7

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    const/4 v4, 0x4

    .line 13
    const/4 v5, 0x5

    .line 14
    filled-new-array {v3, v4, v5, v1, v2}, [I

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/main/MenuIconAdapter;->H([IZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
