.class Lcom/mycompany/app/dialog/DialogEditorPen$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogEditorPen;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditorPen;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorPen$13;->f:Lcom/mycompany/app/dialog/DialogEditorPen;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogEditorPen$13;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorPen$13;->f:Lcom/mycompany/app/dialog/DialogEditorPen;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->u0:Z

    .line 5
    .line 6
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen$13;->c:I

    .line 7
    .line 8
    invoke-static {v1, v0}, Lcom/mycompany/app/dialog/DialogEditorPen;->C(Lcom/mycompany/app/dialog/DialogEditorPen;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
