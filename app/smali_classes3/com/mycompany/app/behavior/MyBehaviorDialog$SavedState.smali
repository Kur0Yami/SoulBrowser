.class public Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/behavior/MyBehaviorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final g:I

.field public final h:I

.field public final i:Z

.field public final j:Z

.field public final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->g:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->h:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->i:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-ne p2, v1, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->j:Z

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->k:Z

    return-void
.end method

.method public constructor <init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;)V
    .locals 1

    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 7
    invoke-direct {p0, v0}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    iget v0, p1, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    iput v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->g:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->h:I

    .line 10
    iget-boolean v0, p1, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    iput-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->i:Z

    .line 11
    iget-boolean p1, p1, Lcom/mycompany/app/behavior/MyBehaviorDialog;->n:Z

    iput-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->j:Z

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->k:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->g:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->h:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-boolean p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->i:Z

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget-boolean p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->j:Z

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-boolean p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->k:Z

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
