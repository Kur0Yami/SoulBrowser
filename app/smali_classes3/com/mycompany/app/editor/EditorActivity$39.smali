.class Lcom/mycompany/app/editor/EditorActivity$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/EditorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$39;->a:Lcom/mycompany/app/editor/EditorActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/editor/EditorActivity;->l2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/editor/EditorActivity$39;->a:Lcom/mycompany/app/editor/EditorActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/editor/EditorActivity;->y0()V

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, p1, v1}, Lcom/mycompany/app/editor/EditorActivity;->u0(Lcom/mycompany/app/editor/EditorActivity;ZZ)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/editor/EditorActivity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
