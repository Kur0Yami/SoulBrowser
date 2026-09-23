.class Lcom/mycompany/app/web/WebNestView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Landroid/webkit/ValueCallback;

.field public final synthetic g:Lcom/mycompany/app/web/WebNestView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$4;->g:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/web/WebNestView$4;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/web/WebNestView$4;->f:Landroid/webkit/ValueCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$4;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebNestView$4;->f:Landroid/webkit/ValueCallback;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/web/WebNestView$4;->g:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Lcom/mycompany/app/web/WebNestView;->b(Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
