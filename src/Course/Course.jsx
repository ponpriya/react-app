
const styles={
    backgroundColor:'green',
}
const course1='html'
function Course() {
    return (
        <div style={styles}>
            <h2>Course1</h2>
            <h4>React EP3</h4>
            <button>Enroll Now</button>
            <h3>{course1}</h3>
        </div>
    )
}
export default Course;