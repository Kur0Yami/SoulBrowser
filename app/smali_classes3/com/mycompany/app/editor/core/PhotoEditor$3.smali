.class Lcom/mycompany/app/editor/core/PhotoEditor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/editor/core/PhotoTouchListener$PhotoObjectListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/editor/core/PhotoEditor;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/core/PhotoEditor;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditor$3;->b:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/editor/core/PhotoEditor$3;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor$3;->b:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget p2, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->h:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    iput v1, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->h:I

    .line 15
    .line 16
    iget-object p1, p1, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->a:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/mycompany/app/editor/core/PhotoEditor;->b(Landroid/widget/FrameLayout;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    const/4 p1, 0x0

    .line 23
    iput p1, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->h:I

    .line 24
    .line 25
    return-void
.end method
