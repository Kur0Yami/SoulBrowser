.class Lcom/mycompany/app/main/image/MainImageQuick$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/image/MainImageQuick;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$29;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 0

    .line 1
    sget p1, Lcom/mycompany/app/main/image/MainImageQuick;->f2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$29;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImageQuick;->z0()V

    .line 6
    .line 7
    .line 8
    const/4 p3, 0x1

    .line 9
    if-ne p2, p3, :cond_0

    .line 10
    .line 11
    move p2, p3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    iput-boolean p2, p1, Lcom/mycompany/app/main/image/MainImageQuick;->U1:Z

    .line 15
    .line 16
    iget-object p2, p1, Lcom/mycompany/app/main/image/MainImageQuick;->s1:Lcom/mycompany/app/view/MyCoverView;

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-boolean p4, p1, Lcom/mycompany/app/main/image/MainImageQuick;->M1:Z

    .line 22
    .line 23
    if-eqz p4, :cond_2

    .line 24
    .line 25
    :goto_1
    return-void

    .line 26
    :cond_2
    iput-boolean p3, p1, Lcom/mycompany/app/main/image/MainImageQuick;->M1:Z

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Lcom/mycompany/app/main/image/MainImageQuick$19;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Lcom/mycompany/app/main/image/MainImageQuick$19;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
