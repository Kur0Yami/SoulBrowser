.class Lcom/mycompany/app/view/MyDialogBottom$18;
.super Lcom/mycompany/app/behavior/MyBehaviorDialog$BottomSheetCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/view/MyDialogBottom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyDialogBottom;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogBottom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom$18;->a:Lcom/mycompany/app/view/MyDialogBottom;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom$18;->a:Lcom/mycompany/app/view/MyDialogBottom;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->F:Lcom/mycompany/app/view/MyRecyclerView;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v2, 0x3

    .line 16
    if-eq p1, v2, :cond_3

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    if-ne p1, v2, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    return-void

    .line 23
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->p0()V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, v1, Lcom/mycompany/app/view/MyDialogBottom;->H:Z

    .line 28
    .line 29
    return-void
.end method
