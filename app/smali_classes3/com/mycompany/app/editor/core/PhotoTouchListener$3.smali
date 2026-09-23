.class Lcom/mycompany/app/editor/core/PhotoTouchListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/editor/core/PhotoTouchListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/core/PhotoTouchListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoTouchListener$3;->c:Lcom/mycompany/app/editor/core/PhotoTouchListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoTouchListener$3;->c:Lcom/mycompany/app/editor/core/PhotoTouchListener;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->h:Lcom/mycompany/app/editor/core/PhotoTouchListener$PhotoObjectListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->j:Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v1, v0, v2}, Lcom/mycompany/app/editor/core/PhotoTouchListener$PhotoObjectListener;->a(Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
