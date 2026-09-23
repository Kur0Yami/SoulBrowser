.class Lcom/mycompany/app/web/WebVideoFull$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$29;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$29;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mycompany/app/web/WebVideoFull;->B(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Lcom/mycompany/app/web/WebVideoFull;->r0:Z

    .line 8
    .line 9
    invoke-static {p1, v0, v0}, Lcom/mycompany/app/web/WebVideoFull;->F(Lcom/mycompany/app/web/WebVideoFull;ZZ)Z

    .line 10
    .line 11
    .line 12
    return v0
.end method
