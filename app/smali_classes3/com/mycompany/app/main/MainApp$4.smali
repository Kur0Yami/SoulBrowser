.class Lcom/mycompany/app/main/MainApp$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyAdNative$AdNativeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainApp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainApp$4;->a:Lcom/mycompany/app/main/MainApp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/main/MainApp;->X0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp$4;->a:Lcom/mycompany/app/main/MainApp;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainApp;->B()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final b(Lcom/mycompany/app/view/MyAdNative;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp$4;->a:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainApp;->O0:Lcom/mycompany/app/main/MainApp$AdLocalListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/mycompany/app/main/MainApp$AdLocalListener;->b(Lcom/mycompany/app/view/MyAdNative;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final c(Lcom/mycompany/app/view/MyAdNative;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp$4;->a:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainApp;->O0:Lcom/mycompany/app/main/MainApp$AdLocalListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/mycompany/app/main/MainApp$AdLocalListener;->c(Lcom/mycompany/app/view/MyAdNative;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp$4;->a:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->O0:Lcom/mycompany/app/main/MainApp$AdLocalListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-wide/16 v2, 0x4e20

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/main/MainApp;->H(IJ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp$4;->a:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->O0:Lcom/mycompany/app/main/MainApp$AdLocalListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1}, Lcom/mycompany/app/main/MainApp$AdLocalListener;->e()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    const-wide/16 v2, 0x4e20

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/main/MainApp;->H(IJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final f(Lcom/mycompany/app/view/MyAdNative;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp$4;->a:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->O0:Lcom/mycompany/app/main/MainApp$AdLocalListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1, p1}, Lcom/mycompany/app/main/MainApp$AdLocalListener;->f(Lcom/mycompany/app/view/MyAdNative;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    const-wide/16 v1, 0x4e20

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1, v2}, Lcom/mycompany/app/main/MainApp;->H(IJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final g(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp$4;->a:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainApp;->J0:Lcom/mycompany/app/main/MainApp$AdBusyListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1, p1}, Lcom/mycompany/app/main/MainApp$AdBusyListener;->b(IZ)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
