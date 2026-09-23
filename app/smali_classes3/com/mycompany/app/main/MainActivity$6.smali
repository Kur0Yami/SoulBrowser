.class Lcom/mycompany/app/main/MainActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity$6;->a:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Landroidx/activity/result/ActivityResult;->c:I

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->f:Landroid/content/Intent;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/main/MainActivity$6;->a:Lcom/mycompany/app/main/MainActivity;

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    invoke-virtual {v1, v2, v0, p1}, Lcom/mycompany/app/main/MainActivity;->k0(IILandroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
