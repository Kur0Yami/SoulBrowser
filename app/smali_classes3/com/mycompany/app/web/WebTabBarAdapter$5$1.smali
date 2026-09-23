.class Lcom/mycompany/app/web/WebTabBarAdapter$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebTabBarAdapter$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTabBarAdapter$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter$5$1;->c:Lcom/mycompany/app/web/WebTabBarAdapter$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter$5$1;->c:Lcom/mycompany/app/web/WebTabBarAdapter$5;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter$5;->c:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 4
    .line 5
    iget v2, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->E:I

    .line 6
    .line 7
    iget v3, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 8
    .line 9
    if-ltz v3, :cond_0

    .line 10
    .line 11
    if-ge v3, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Lcom/mycompany/app/web/WebTabBarAdapter;->x(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter$5;->c:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->z:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarChangeListener;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Lcom/mycompany/app/web/WebTabBarAdapter$TabBarChangeListener;->a()V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/mycompany/app/web/WebTabBarAdapter$5;->c:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->z:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarChangeListener;

    .line 29
    .line 30
    :cond_1
    return-void
.end method
