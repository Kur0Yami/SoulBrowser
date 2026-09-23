.class Lcom/mycompany/app/editor/EditorActivity$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/mycompany/app/editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/EditorActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$41;->b:Lcom/mycompany/app/editor/EditorActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/editor/EditorActivity$41;->a:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    iget-boolean v5, p0, Lcom/mycompany/app/editor/EditorActivity$41;->a:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/mycompany/app/editor/EditorActivity$41;->b:Lcom/mycompany/app/editor/EditorActivity;

    .line 7
    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/editor/EditorActivity$SaveTask;-><init>(Lcom/mycompany/app/editor/EditorActivity;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    .line 11
    .line 12
    .line 13
    iget-object p1, v1, Lcom/mycompany/app/editor/EditorActivity;->f1:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
