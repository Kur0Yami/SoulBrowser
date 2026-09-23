.class Lcom/mycompany/app/setting/CastActivity$MySessionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/SessionManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/setting/CastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySessionListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/cast/framework/SessionManagerListener<",
        "Lcom/google/android/gms/cast/framework/CastSession;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/CastActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/CastActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/CastActivity$MySessionListener;->a:Lcom/mycompany/app/setting/CastActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    return-void
.end method

.method public final f(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity$MySessionListener;->a:Lcom/mycompany/app/setting/CastActivity;

    .line 4
    .line 5
    iget-object v0, p2, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p2, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final h(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity$MySessionListener;->a:Lcom/mycompany/app/setting/CastActivity;

    .line 4
    .line 5
    iput-object p1, p2, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/mycompany/app/setting/CastActivity;->u0()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p2, Lcom/mycompany/app/setting/CastActivity;->l1:Lcom/mycompany/app/setting/CastActivity$MyCastListener;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/mycompany/app/setting/CastActivity$MyCastListener;->a()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final bridge synthetic j(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    return-void
.end method

.method public final k(Lcom/google/android/gms/cast/framework/Session;Z)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity$MySessionListener;->a:Lcom/mycompany/app/setting/CastActivity;

    .line 4
    .line 5
    iput-object p1, p2, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/mycompany/app/setting/CastActivity;->u0()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p2, Lcom/mycompany/app/setting/CastActivity;->l1:Lcom/mycompany/app/setting/CastActivity$MyCastListener;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/mycompany/app/setting/CastActivity$MyCastListener;->a()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final bridge synthetic m(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic n(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic o(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    return-void
.end method
