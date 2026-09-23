.class Lcom/mycompany/app/web/WebTabAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebTabGridItem$TabGridListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebTabAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTabAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter$3;->a:Lcom/mycompany/app/web/WebTabAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter$3;->a:Lcom/mycompany/app/web/WebTabAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebTabAdapter;->x:Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
